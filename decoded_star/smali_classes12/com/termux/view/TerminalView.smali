.class public final Lcom/termux/view/TerminalView;
.super Landroid/view/View;
.source "TerminalView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TerminalView"

.field public static final TERMINAL_CURSOR_BLINK_RATE_MAX:I = 0x7d0

.field public static final TERMINAL_CURSOR_BLINK_RATE_MIN:I = 0x64

.field private static TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z


# instance fields
.field private final mAccessibilityEnabled:Z

.field public mClient:Lcom/termux/view/TerminalViewClient;

.field mCombiningAccent:I

.field private mCursorInvisibleIgnoreOnce:Z

.field mDefaultSelectors:[I

.field public mEmulator:Lcom/termux/terminal/TerminalEmulator;

.field final mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

.field private mMouseScrollStartX:I

.field private mMouseScrollStartY:I

.field private mMouseStartDownTime:J

.field public mRenderer:Lcom/termux/view/TerminalRenderer;

.field mScaleFactor:F

.field mScrollRemainder:F

.field final mScroller:Landroid/widget/Scroller;

.field private final mShowFloatingToolbar:Ljava/lang/Runnable;

.field public mTermSession:Lcom/termux/terminal/TerminalSession;

.field private mTerminalCursorBlinkerHandler:Landroid/os/Handler;

.field private mTerminalCursorBlinkerRate:I

.field private mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

.field private mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

.field mTopRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attributes"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mDefaultSelectors:[I

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/termux/view/TerminalView;->mScaleFactor:F

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    iput v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    .line 74
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    .line 1247
    new-instance v0, Lcom/termux/view/TerminalView$3;

    invoke-direct {v0, p0}, Lcom/termux/view/TerminalView$3;-><init>(Lcom/termux/view/TerminalView;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mShowFloatingToolbar:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Lcom/termux/view/GestureAndScaleRecognizer;

    new-instance v1, Lcom/termux/view/TerminalView$1;

    invoke-direct {v1, p0}, Lcom/termux/view/TerminalView$1;-><init>(Lcom/termux/view/TerminalView;)V

    invoke-direct {v0, p1, v1}, Lcom/termux/view/GestureAndScaleRecognizer;-><init>(Landroid/content/Context;Lcom/termux/view/GestureAndScaleRecognizer$Listener;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    .line 211
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    .line 212
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 213
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/termux/view/TerminalView;->mAccessibilityEnabled:Z

    .line 214
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    return v0
.end method

.method static synthetic access$100(Lcom/termux/view/TerminalView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/termux/view/TerminalView;

    .line 41
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/termux/view/TerminalView;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/termux/view/TerminalView;

    .line 41
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method private decrementYTextSelectionCursors(I)V
    .locals 1
    .param p1, "decrement"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decrement"
        }
    .end annotation

    .line 1214
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1215
    invoke-virtual {v0, p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->decrementYTextSelectionCursors(I)V

    .line 1217
    :cond_0
    return-void
.end method

.method private getText()Ljava/lang/CharSequence;
    .locals 5

    .line 933
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTextSelectionActionMode()Landroid/view/ActionMode;
    .locals 1

    .line 1188
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1189
    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 1191
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private hideTextSelectionCursors()Z
    .locals 1

    .line 1171
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getTextSelectionCursorController()Lcom/termux/view/textselection/TextSelectionCursorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->hide()Z

    move-result v0

    return v0
.end method

.method private renderTextSelection()V
    .locals 1

    .line 1175
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1176
    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->render()V

    .line 1177
    :cond_0
    return-void
.end method

.method private showFloatingToolbar()V
    .locals 4

    .line 1257
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1258
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    .line 1259
    .local v0, "delay":I
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mShowFloatingToolbar:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/termux/view/TerminalView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1261
    .end local v0    # "delay":I
    :cond_0
    return-void
.end method

.method private showTextSelectionCursors(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1167
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getTextSelectionCursorController()Lcom/termux/view/textselection/TextSelectionCursorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->show(Landroid/view/MotionEvent;)V

    .line 1168
    return-void
.end method

.method private stopTerminalCursorBlinker()V
    .locals 3

    .line 1105
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    if-eqz v0, :cond_1

    .line 1106
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    const-string v2, "Stopping cursor blinker"

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1110
    :cond_1
    return-void
.end method


# virtual methods
.method public attachSession(Lcom/termux/terminal/TerminalSession;)Z
    .locals 2
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 244
    :cond_0
    iput v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 246
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    .line 248
    iput v1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 250
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    .line 253
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView;->setVerticalScrollBarEnabled(Z)V

    .line 255
    return v0
.end method

.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 2
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 971
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 974
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    :goto_0
    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v0

    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v1, v1, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v0

    :goto_0
    return v0
.end method

.method doScroll(Landroid/view/MotionEvent;I)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rowsDown"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "rowsDown"
        }
    .end annotation

    .line 509
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 510
    .local v2, "up":Z
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 511
    .local v3, "amount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_7

    .line 512
    iget-object v5, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v5}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 513
    if-eqz v2, :cond_1

    const/16 v5, 0x40

    goto :goto_2

    :cond_1
    const/16 v5, 0x41

    :goto_2
    invoke-virtual {p0, p1, v5, v1}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_5

    .line 514
    :cond_2
    iget-object v5, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v5}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 517
    if-eqz v2, :cond_3

    const/16 v5, 0x13

    goto :goto_3

    :cond_3
    const/16 v5, 0x14

    :goto_3
    invoke-virtual {p0, v5, v0}, Lcom/termux/view/TerminalView;->handleKeyCode(II)Z

    goto :goto_5

    .line 519
    :cond_4
    iget-object v5, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v5}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v5

    neg-int v5, v5

    iget v6, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    if-eqz v2, :cond_5

    const/4 v7, -0x1

    goto :goto_4

    :cond_5
    move v7, v1

    :goto_4
    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 520
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->awakenScrollBars()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 511
    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 523
    .end local v4    # "i":I
    :cond_7
    return-void
.end method

.method public getAutofillType()I
    .locals 1

    .line 979
    const/4 v0, 0x1

    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    .line 985
    const-string v0, ""

    invoke-static {v0}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    return-object v0
.end method

.method public getColumnAndRow(Landroid/view/MotionEvent;Z)[I
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "relativeToScroll"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "relativeToScroll"
        }
    .end annotation

    .line 481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 482
    .local v0, "column":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 483
    .local v1, "row":I
    if-eqz p2, :cond_0

    .line 484
    iget v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/2addr v1, v2

    .line 486
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2
.end method

.method public getCurrentSession()Lcom/termux/terminal/TerminalSession;
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    return-object v0
.end method

.method public getCursorX(F)I
    .locals 1
    .param p1, "x"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 937
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v0, v0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float v0, p1, v0

    float-to-int v0, v0

    return v0
.end method

.method public getCursorY(F)I
    .locals 2
    .param p1, "y"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    .line 941
    const/high16 v0, 0x42200000    # 40.0f

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getPointX(I)I
    .locals 2
    .param p1, "cx"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cx"
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-le p1, v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p1, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 948
    :cond_0
    int-to-float v0, p1

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getPointY(I)I
    .locals 2
    .param p1, "cy"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cy"
        }
    .end annotation

    .line 952
    iget v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method getTextSelectionCursorController()Lcom/termux/view/textselection/TextSelectionCursorController;
    .locals 2

    .line 1154
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-nez v0, :cond_0

    .line 1155
    new-instance v0, Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-direct {v0, p0}, Lcom/termux/view/textselection/TextSelectionCursorController;-><init>(Lcom/termux/view/TerminalView;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    .line 1157
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1158
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1159
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1163
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    return-object v0
.end method

.method public getTopRow()I
    .locals 1

    .line 956
    iget v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    return v0
.end method

.method public handleKeyCode(II)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "keyMod"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "keyMod"
        }
    .end annotation

    .line 839
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 840
    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkState(Z)V

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    .line 843
    .local v0, "term":Lcom/termux/terminal/TerminalEmulator;
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isCursorKeysApplicationMode()Z

    move-result v2

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isKeypadApplicationMode()Z

    move-result v3

    invoke-static {p1, p2, v2, v3}, Lcom/termux/terminal/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object v2

    .line 844
    .local v2, "code":Ljava/lang/String;
    if-nez v2, :cond_1

    const/4 v1, 0x0

    return v1

    .line 845
    :cond_1
    iget-object v3, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v3, v2}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 846
    return v1
.end method

.method hideFloatingToolbar()V
    .locals 3

    .line 1264
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1266
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    .line 1268
    :cond_0
    return-void
.end method

.method public inputCodePoint(IZZ)V
    .locals 5
    .param p1, "codePoint"    # I
    .param p2, "controlDownFromEvent"    # Z
    .param p3, "leftAltDownFromEvent"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "codePoint",
            "controlDownFromEvent",
            "leftAltDownFromEvent"
        }
    .end annotation

    .line 775
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inputCodePoint(codePoint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", controlDownFromEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", leftAltDownFromEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalView"

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    if-nez v0, :cond_1

    return-void

    .line 783
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 784
    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkState(Z)V

    .line 786
    :cond_2
    const/4 v0, 0x0

    if-nez p2, :cond_4

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v2}, Lcom/termux/view/TerminalViewClient;->readControlKey()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v1

    .line 787
    .local v2, "controlDown":Z
    :goto_1
    if-nez p3, :cond_5

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v3}, Lcom/termux/view/TerminalViewClient;->readAltKey()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v0, v1

    .line 789
    .local v0, "altDown":Z
    :cond_6
    iget-object v3, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-interface {v3, p1, v2, v4}, Lcom/termux/view/TerminalViewClient;->onCodePoint(IZLcom/termux/terminal/TerminalSession;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-void

    .line 791
    :cond_7
    if-eqz v2, :cond_16

    .line 792
    const/16 v3, 0x61

    if-lt p1, v3, :cond_8

    const/16 v3, 0x7a

    if-gt p1, v3, :cond_8

    .line 793
    add-int/lit8 v3, p1, -0x61

    add-int/lit8 p1, v3, 0x1

    goto/16 :goto_8

    .line 794
    :cond_8
    const/16 v3, 0x41

    if-lt p1, v3, :cond_9

    const/16 v3, 0x5a

    if-gt p1, v3, :cond_9

    .line 795
    add-int/lit8 v3, p1, -0x41

    add-int/lit8 p1, v3, 0x1

    goto :goto_8

    .line 796
    :cond_9
    const/16 v1, 0x20

    if-eq p1, v1, :cond_15

    const/16 v1, 0x32

    if-ne p1, v1, :cond_a

    goto :goto_7

    .line 798
    :cond_a
    const/16 v1, 0x5b

    if-eq p1, v1, :cond_14

    const/16 v1, 0x33

    if-ne p1, v1, :cond_b

    goto :goto_6

    .line 800
    :cond_b
    const/16 v1, 0x5c

    if-eq p1, v1, :cond_13

    const/16 v1, 0x34

    if-ne p1, v1, :cond_c

    goto :goto_5

    .line 802
    :cond_c
    const/16 v1, 0x5d

    if-eq p1, v1, :cond_12

    const/16 v1, 0x35

    if-ne p1, v1, :cond_d

    goto :goto_4

    .line 804
    :cond_d
    const/16 v1, 0x5e

    if-eq p1, v1, :cond_11

    const/16 v1, 0x36

    if-ne p1, v1, :cond_e

    goto :goto_3

    .line 806
    :cond_e
    const/16 v1, 0x5f

    if-eq p1, v1, :cond_10

    const/16 v1, 0x37

    if-eq p1, v1, :cond_10

    const/16 v1, 0x2f

    if-ne p1, v1, :cond_f

    goto :goto_2

    .line 810
    :cond_f
    const/16 v1, 0x38

    if-ne p1, v1, :cond_16

    .line 811
    const/16 p1, 0x7f

    goto :goto_8

    .line 809
    :cond_10
    :goto_2
    const/16 p1, 0x1f

    goto :goto_8

    .line 805
    :cond_11
    :goto_3
    const/16 p1, 0x1e

    goto :goto_8

    .line 803
    :cond_12
    :goto_4
    const/16 p1, 0x1d

    goto :goto_8

    .line 801
    :cond_13
    :goto_5
    const/16 p1, 0x1c

    goto :goto_8

    .line 799
    :cond_14
    :goto_6
    const/16 p1, 0x1b

    goto :goto_8

    .line 797
    :cond_15
    :goto_7
    const/4 p1, 0x0

    .line 815
    :cond_16
    :goto_8
    const/4 v1, -0x1

    if-le p1, v1, :cond_17

    .line 819
    sparse-switch p1, :sswitch_data_0

    goto :goto_9

    .line 821
    :sswitch_0
    const/16 p1, 0x7e

    .line 822
    goto :goto_9

    .line 824
    :sswitch_1
    const/16 p1, 0x60

    .line 825
    goto :goto_9

    .line 827
    :sswitch_2
    const/16 p1, 0x5e

    .line 832
    :goto_9
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v1, v0, p1}, Lcom/termux/terminal/TerminalSession;->writeCodePoint(ZI)V

    .line 834
    :cond_17
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c6 -> :sswitch_2
        0x2cb -> :sswitch_1
        0x2dc -> :sswitch_0
    .end sparse-switch
.end method

.method public isOpaque()Z
    .locals 1

    .line 466
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectingText()Z
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1181
    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->isActive()Z

    move-result v0

    return v0

    .line 1183
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1221
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1223
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1224
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1226
    :cond_0
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .line 461
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outAttrs"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->isTerminalViewSelected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldEnforceCharBasedInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const v0, 0x80090

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 282
    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 286
    :cond_1
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 291
    :goto_0
    const/high16 v0, 0x2000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 293
    new-instance v0, Lcom/termux/view/TerminalView$2;

    invoke-direct {v0, p0, p0, v1}, Lcom/termux/view/TerminalView$2;-><init>(Lcom/termux/view/TerminalView;Landroid/view/View;Z)V

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1230
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1232
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1235
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 1237
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1238
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->onDetached()V

    .line 1240
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 912
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    .line 913
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mDefaultSelectors:[I

    .line 917
    .local v0, "sel":[I
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v1, :cond_1

    .line 918
    invoke-virtual {v1, v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->getSelectors([I)V

    .line 921
    :cond_1
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v5, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    const/4 v1, 0x0

    aget v6, v0, v1

    const/4 v1, 0x1

    aget v7, v0, v1

    const/4 v1, 0x2

    aget v8, v0, v1

    const/4 v1, 0x3

    aget v9, v0, v1

    move-object v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/termux/view/TerminalRenderer;->render(Lcom/termux/terminal/TerminalEmulator;Landroid/graphics/Canvas;IIIII)V

    .line 924
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->renderTextSelection()V

    .line 926
    .end local v0    # "sel":[I
    :goto_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 530
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v1, v2

    :cond_0
    move v0, v1

    .line 531
    .local v0, "up":Z
    if-eqz v0, :cond_1

    const/4 v1, -0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/termux/view/TerminalView;->doScroll(Landroid/view/MotionEvent;I)V

    .line 532
    return v2

    .line 534
    .end local v0    # "up":Z
    :cond_2
    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 17
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 700
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    sget-boolean v3, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    const-string v4, "TerminalView"

    if-eqz v3, :cond_0

    .line 701
    iget-object v3, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onKeyDown(keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSystem()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :cond_0
    iget-object v3, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v5, 0x1

    if-nez v3, :cond_1

    return v5

    .line 703
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 707
    :cond_2
    iget-object v3, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-object v6, v0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-interface {v3, v1, v2, v6}, Lcom/termux/view/TerminalViewClient;->onKeyDown(ILandroid/view/KeyEvent;Lcom/termux/terminal/TerminalSession;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 709
    return v5

    .line 710
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v3}, Lcom/termux/view/TerminalViewClient;->shouldBackButtonBeMappedToEscape()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_5

    .line 711
    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 712
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    if-nez v1, :cond_6

    .line 713
    iget-object v3, v0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 714
    return v5

    .line 717
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 718
    .local v3, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v6}, Lcom/termux/view/TerminalViewClient;->readControlKey()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    :cond_8
    :goto_0
    move v6, v5

    .line 719
    .local v6, "controlDown":Z
    :goto_1
    and-int/lit8 v8, v3, 0x10

    if-nez v8, :cond_a

    iget-object v8, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v8}, Lcom/termux/view/TerminalViewClient;->readAltKey()Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_2

    :cond_9
    const/4 v8, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    move v8, v5

    .line 720
    .local v8, "leftAltDown":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v9}, Lcom/termux/view/TerminalViewClient;->readShiftKey()Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_4

    :cond_b
    const/4 v9, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    move v9, v5

    .line 721
    .local v9, "shiftDown":Z
    :goto_5
    and-int/lit8 v10, v3, 0x20

    if-eqz v10, :cond_d

    move v10, v5

    goto :goto_6

    :cond_d
    const/4 v10, 0x0

    .line 723
    .local v10, "rightAltDownFromEvent":Z
    :goto_6
    const/4 v11, 0x0

    .line 724
    .local v11, "keyMod":I
    if-eqz v6, :cond_e

    const/high16 v12, 0x40000000    # 2.0f

    or-int/2addr v11, v12

    .line 725
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v12

    const/high16 v13, -0x80000000

    if-nez v12, :cond_f

    if-eqz v8, :cond_10

    :cond_f
    or-int/2addr v11, v13

    .line 726
    :cond_10
    if-eqz v9, :cond_11

    const/high16 v12, 0x20000000

    or-int/2addr v11, v12

    .line 727
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isNumLockOn()Z

    move-result v12

    if-eqz v12, :cond_12

    const/high16 v12, 0x10000000

    or-int/2addr v11, v12

    .line 729
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isFunctionPressed()Z

    move-result v12

    if-nez v12, :cond_14

    invoke-virtual {v0, v1, v11}, Lcom/termux/view/TerminalView;->handleKeyCode(II)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 730
    sget-boolean v7, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v7, :cond_13

    iget-object v7, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v12, "handleKeyCode() took key event"

    invoke-interface {v7, v4, v12}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_13
    return v5

    .line 735
    :cond_14
    const/16 v12, 0x7000

    .line 736
    .local v12, "bitsToClear":I
    if-eqz v10, :cond_15

    goto :goto_7

    .line 740
    :cond_15
    or-int/lit8 v12, v12, 0x12

    .line 742
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v14

    not-int v15, v12

    and-int/2addr v14, v15

    .line 744
    .local v14, "effectiveMetaState":I
    if-eqz v9, :cond_16

    or-int/lit8 v14, v14, 0x41

    .line 745
    :cond_16
    iget-object v15, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v15}, Lcom/termux/view/TerminalViewClient;->readFnKey()Z

    move-result v15

    if-eqz v15, :cond_17

    or-int/lit8 v14, v14, 0x8

    .line 747
    :cond_17
    invoke-virtual {v2, v14}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v15

    .line 748
    .local v15, "result":I
    sget-boolean v16, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v16, :cond_18

    .line 749
    iget-object v5, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyEvent#getUnicodeChar("

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, ") returned: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v4, v7}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_18
    if-nez v15, :cond_19

    .line 751
    const/4 v4, 0x0

    return v4

    .line 754
    :cond_19
    iget v4, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 755
    .local v4, "oldCombiningAccent":I
    const/high16 v5, -0x80000000

    and-int/2addr v5, v15

    if-eqz v5, :cond_1b

    .line 757
    iget v5, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    if-eqz v5, :cond_1a

    .line 758
    invoke-virtual {v0, v5, v6, v8}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    .line 759
    :cond_1a
    const v5, 0x7fffffff

    and-int/2addr v5, v15

    iput v5, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    goto :goto_8

    .line 761
    :cond_1b
    iget v5, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    if-eqz v5, :cond_1d

    .line 762
    invoke-static {v5, v15}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v5

    .line 763
    .local v5, "combinedChar":I
    if-lez v5, :cond_1c

    move v7, v5

    move v15, v7

    .line 764
    :cond_1c
    const/4 v7, 0x0

    iput v7, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 766
    .end local v5    # "combinedChar":I
    :cond_1d
    invoke-virtual {v0, v15, v6, v8}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    .line 769
    :goto_8
    iget v5, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    if-eq v5, v4, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 771
    :cond_1e
    const/4 v5, 0x1

    return v5
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 578
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyPreIme(keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalView"

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 581
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 583
    const/4 v0, 0x1

    return v0

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldBackButtonBeMappedToEscape()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 586
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 590
    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 588
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 593
    :cond_2
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldUseCtrlSpaceWorkaround()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3e

    if-ne p1, v0, :cond_3

    .line 594
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 597
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 599
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 858
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp(keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalView"

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return v1

    .line 865
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0, p1, p2}, Lcom/termux/view/TerminalViewClient;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 866
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 867
    return v1

    .line 868
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 870
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 873
    :cond_3
    return v1
.end method

.method public onScreenUpdated()V
    .locals 5

    .line 406
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    .line 409
    .local v0, "rowsInHistory":I
    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    neg-int v2, v0

    if-ge v1, v2, :cond_1

    neg-int v1, v0

    iput v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 411
    :cond_1
    const/4 v1, 0x0

    .line 412
    .local v1, "skipScrolling":Z
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 414
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalEmulator;->getScrollCounter()I

    move-result v2

    .line 415
    .local v2, "rowShift":I
    iget v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    neg-int v4, v3

    add-int/2addr v4, v2

    if-le v4, v0, :cond_2

    .line 418
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    goto :goto_0

    .line 420
    :cond_2
    const/4 v1, 0x1

    .line 421
    sub-int/2addr v3, v2

    iput v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 422
    invoke-direct {p0, v2}, Lcom/termux/view/TerminalView;->decrementYTextSelectionCursors(I)V

    .line 426
    .end local v2    # "rowShift":I
    :cond_3
    :goto_0
    if-nez v1, :cond_5

    iget v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    if-eqz v2, :cond_5

    .line 428
    const/4 v3, -0x3

    if-ge v2, v3, :cond_4

    .line 432
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->awakenScrollBars()Z

    .line 434
    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 437
    :cond_5
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalEmulator;->clearScrollCounter()V

    .line 439
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 440
    iget-boolean v2, p0, Lcom/termux/view/TerminalView;->mAccessibilityEnabled:Z

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/view/TerminalView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 441
    :cond_6
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 882
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    .line 883
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 542
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 544
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 545
    invoke-virtual {p0, p1}, Lcom/termux/view/TerminalView;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    .line 546
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v2, p1}, Lcom/termux/view/GestureAndScaleRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 547
    return v1

    .line 548
    :cond_1
    const/16 v2, 0x2002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 549
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 550
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    .line 551
    :cond_2
    return v1

    .line 552
    :cond_3
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 553
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "clipboard"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 554
    .local v2, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v4

    .line 555
    .local v4, "clipData":Landroid/content/ClipData;
    if-eqz v4, :cond_6

    .line 556
    invoke-virtual {v4, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 557
    .local v3, "paste":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    goto :goto_1

    .line 559
    .end local v2    # "clipboard":Landroid/content/ClipboardManager;
    .end local v3    # "paste":Ljava/lang/CharSequence;
    .end local v4    # "clipData":Landroid/content/ClipData;
    :cond_4
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 560
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 566
    :pswitch_0
    const/16 v2, 0x20

    invoke-virtual {p0, p1, v2, v1}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_1

    .line 563
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    move v2, v3

    :goto_0
    invoke-virtual {p0, p1, v3, v2}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    .line 564
    nop

    .line 572
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v2, p1}, Lcom/termux/view/GestureAndScaleRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 573
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method sendMouseEventCode(Landroid/view/MotionEvent;IZ)V
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "button"    # I
    .param p3, "pressed"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "e",
            "button",
            "pressed"
        }
    .end annotation

    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/termux/view/TerminalView;->getColumnAndRow(Landroid/view/MotionEvent;Z)[I

    move-result-object v1

    .line 492
    .local v1, "columnAndRow":[I
    aget v0, v1, v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 493
    .local v0, "x":I
    aget v3, v1, v2

    add-int/2addr v3, v2

    .line 494
    .local v3, "y":I
    if-eqz p3, :cond_2

    const/16 v2, 0x41

    if-eq p2, v2, :cond_0

    const/16 v2, 0x40

    if-ne p2, v2, :cond_2

    .line 495
    :cond_0
    iget-wide v4, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    .line 496
    iget v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    .line 497
    iget v3, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    goto :goto_0

    .line 499
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    .line 500
    iput v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    .line 501
    iput v3, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    .line 504
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v2, p2, v0, v3, p3}, Lcom/termux/terminal/TerminalEmulator;->sendMouseEvent(IIIZ)V

    .line 505
    return-void
.end method

.method public setIsTerminalViewKeyLoggingEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 232
    sput-boolean p1, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    .line 233
    return-void
.end method

.method public declared-synchronized setTerminalCursorBlinkerRate(I)Z
    .locals 4
    .param p1, "blinkRate"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blinkRate"
        }
    .end annotation

    monitor-enter p0

    .line 1004
    if-eqz p1, :cond_1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7d0

    if-le p1, v0, :cond_1

    .line 1005
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The cursor blink rate must be in between 100-2000: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    .line 1007
    const/4 v0, 0x0

    .local v0, "result":Z
    goto :goto_0

    .line 1009
    .end local v0    # "result":Z
    .end local p0    # "this":Lcom/termux/view/TerminalView;
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting cursor blinker rate to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iput p1, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    .line 1011
    const/4 v0, 0x1

    .line 1014
    .restart local v0    # "result":Z
    :goto_0
    iget v1, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    if-nez v1, :cond_2

    .line 1015
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v2, "TerminalView"

    const-string v3, "Cursor blinker disabled"

    invoke-interface {v1, v2, v3}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->stopTerminalCursorBlinker()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    :cond_2
    monitor-exit p0

    return v0

    .line 1003
    .end local v0    # "result":Z
    .end local p1    # "blinkRate":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTerminalCursorBlinkerState(ZZ)V
    .locals 4
    .param p1, "start"    # Z
    .param p2, "startOnlyIfCursorEnabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "startOnlyIfCursorEnabled"
        }
    .end annotation

    monitor-enter p0

    .line 1073
    :try_start_0
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->stopTerminalCursorBlinker()V

    .line 1075
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 1077
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkingEnabled(Z)V

    .line 1079
    if-eqz p1, :cond_7

    .line 1081
    iget v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_6

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 1084
    :cond_1
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isCursorEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1085
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_2

    .line 1086
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    const-string v2, "Ignoring call to start cursor blinker since cursor is not enabled"

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1087
    .end local p0    # "this":Lcom/termux/view/TerminalView;
    :cond_2
    monitor-exit p0

    return-void

    .line 1091
    :cond_3
    :try_start_2
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_4

    .line 1092
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting cursor blinker with the blink rate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    :cond_4
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 1094
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    .line 1095
    :cond_5
    new-instance v0, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    invoke-direct {v0, p0, v1, v2}, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;-><init>(Lcom/termux/view/TerminalView;Lcom/termux/terminal/TerminalEmulator;I)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    .line 1096
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkingEnabled(Z)V

    .line 1097
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1082
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    .line 1099
    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    .line 1072
    .end local p1    # "start":Z
    .end local p2    # "startOnlyIfCursorEnabled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTerminalViewClient(Lcom/termux/view/TerminalViewClient;)V
    .locals 0
    .param p1, "client"    # Lcom/termux/view/TerminalViewClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "client"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    .line 224
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "textSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textSize"
        }
    .end annotation

    .line 449
    new-instance v0, Lcom/termux/view/TerminalRenderer;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/termux/view/TerminalRenderer;->mTypeface:Landroid/graphics/Typeface;

    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/termux/view/TerminalRenderer;-><init>(ILandroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    .line 450
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    .line 451
    return-void
.end method

.method public setTopRow(I)V
    .locals 0
    .param p1, "mTopRow"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mTopRow"
        }
    .end annotation

    .line 960
    iput p1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 961
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1, "newTypeface"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newTypeface"
        }
    .end annotation

    .line 454
    new-instance v0, Lcom/termux/view/TerminalRenderer;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mTextSize:I

    invoke-direct {v0, v1, p1}, Lcom/termux/view/TerminalRenderer;-><init>(ILandroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    .line 455
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    .line 456
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 457
    return-void
.end method

.method public startTextSelectionMode(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1196
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1197
    return-void

    .line 1200
    :cond_0
    invoke-direct {p0, p1}, Lcom/termux/view/TerminalView;->showTextSelectionCursors(Landroid/view/MotionEvent;)V

    .line 1201
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/termux/view/TerminalViewClient;->copyModeChanged(Z)V

    .line 1203
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 1204
    return-void
.end method

.method public stopTextSelectionMode()V
    .locals 2

    .line 1207
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->hideTextSelectionCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/termux/view/TerminalViewClient;->copyModeChanged(Z)V

    .line 1209
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 1211
    :cond_0
    return-void
.end method

.method public updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1271
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1274
    :pswitch_0
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->hideFloatingToolbar()V

    .line 1275
    goto :goto_0

    .line 1278
    :pswitch_1
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->showFloatingToolbar()V

    .line 1281
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateSize()V
    .locals 6

    .line 887
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getWidth()I

    move-result v0

    .line 888
    .local v0, "viewWidth":I
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getHeight()I

    move-result v1

    .line 889
    .local v1, "viewHeight":I
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    if-nez v2, :cond_0

    goto :goto_0

    .line 892
    :cond_0
    int-to-float v2, v0

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 893
    .local v2, "newColumns":I
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v4, v4, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    sub-int v4, v1, v4

    iget-object v5, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v5, v5, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    div-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 895
    .local v3, "newRows":I
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne v2, v4, :cond_1

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-eq v3, v4, :cond_3

    .line 896
    :cond_1
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v4, v2, v3}, Lcom/termux/terminal/TerminalSession;->updateSize(II)V

    .line 897
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v4

    iput-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    .line 898
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v4}, Lcom/termux/view/TerminalViewClient;->onEmulatorSet()V

    .line 901
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    if-eqz v4, :cond_2

    .line 902
    iget-object v5, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v4, v5}, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->setEmulator(Lcom/termux/terminal/TerminalEmulator;)V

    .line 904
    :cond_2
    const/4 v4, 0x0

    iput v4, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 905
    invoke-virtual {p0, v4, v4}, Lcom/termux/view/TerminalView;->scrollTo(II)V

    .line 906
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 908
    :cond_3
    return-void

    .line 889
    .end local v2    # "newColumns":I
    .end local v3    # "newRows":I
    :cond_4
    :goto_0
    return-void
.end method
