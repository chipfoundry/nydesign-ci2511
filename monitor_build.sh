#!/bin/bash
# Script to monitor the TinyTapeout build progress

BUILD_DIR="tt-multiplexer/ol2/tt_top"
LATEST_RUN=$(find "$BUILD_DIR/runs" -maxdepth 1 -type d -name "RUN_*" | sort | tail -1)

if [ -z "$LATEST_RUN" ]; then
    echo "No build run found!"
    exit 1
fi

echo "=========================================="
echo "Build Monitor for: $(basename $LATEST_RUN)"
echo "=========================================="
echo ""

# Show current step
echo "📊 Current Step:"
CURRENT_STEP=$(ls -1 "$LATEST_RUN" | grep -E "^[0-9]+-" | sort -V | tail -1)
if [ -n "$CURRENT_STEP" ]; then
    echo "   $CURRENT_STEP"
    STEP_NUM=$(echo "$CURRENT_STEP" | cut -d'-' -f1)
    TOTAL_STEPS=$(ls -1 "$LATEST_RUN" | grep -E "^[0-9]+-" | wc -l)
    echo "   Progress: Step $STEP_NUM of ~78 total steps"
else
    echo "   Build directory created, waiting for first step..."
fi
echo ""

# Check if final GDS exists
if [ -f "$LATEST_RUN/final/gds/openframe_project_wrapper.gds" ]; then
    echo "✅ BUILD COMPLETE!"
    echo "   Final GDS: $LATEST_RUN/final/gds/openframe_project_wrapper.gds"
    ls -lh "$LATEST_RUN/final/gds/openframe_project_wrapper.gds"
    echo ""
else
    echo "⏳ Build in progress..."
    echo ""
fi

# Show recent log activity
echo "📝 Recent Log Activity (last 10 lines):"
if [ -n "$CURRENT_STEP" ] && [ -d "$LATEST_RUN/$CURRENT_STEP" ]; then
    LOG_FILE=$(find "$LATEST_RUN/$CURRENT_STEP" -name "*.log" -type f | head -1)
    if [ -n "$LOG_FILE" ]; then
        echo "   Log: $(basename $LOG_FILE)"
        tail -10 "$LOG_FILE" | sed 's/^/   /'
    else
        echo "   No log file found yet"
    fi
else
    echo "   Waiting for build to start..."
fi
echo ""

# Show disk usage
echo "💾 Disk Usage:"
du -sh "$LATEST_RUN" 2>/dev/null | awk '{print "   Build directory: " $1}'
echo ""

# Show process status
echo "🔍 Build Process:"
if pgrep -f "build.py.*tt_top" > /dev/null; then
    echo "   ✅ Build process is running"
    ps aux | grep -E "build.py.*tt_top" | grep -v grep | awk '{print "   PID: " $2 " (CPU: " $3 "%, MEM: " $4 "%)"}'
else
    echo "   ⚠️  No build process found (may have completed or not started)"
fi
echo ""

# Show key files
echo "📁 Key Files:"
if [ -f "$LATEST_RUN/24-klayout-streamout/openframe_project_wrapper.klayout.gds" ]; then
    echo "   ✅ GDS generated: $(ls -lh "$LATEST_RUN/24-klayout-streamout/openframe_project_wrapper.klayout.gds" | awk '{print $5}')"
fi
if [ -d "$LATEST_RUN/final" ]; then
    echo "   ✅ Final directory exists"
    ls -lh "$LATEST_RUN/final/gds/"*.gds 2>/dev/null | awk '{print "      " $9 " (" $5 ")"}'
fi
echo ""

echo "💡 Tips:"
echo "   - Watch logs: tail -f $LATEST_RUN/*/build.log"
echo "   - Check specific step: ls -la $LATEST_RUN/[step-number]-*/"
echo "   - Full build can take 2-6 hours depending on system"

