.class public final Lcom/termux/terminal/TerminalEmulator;
.super Ljava/lang/Object;
.source "TerminalEmulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/terminal/TerminalEmulator$SavedScreenState;
    }
.end annotation


# static fields
.field private static final DECSET_BIT_APPLICATION_CURSOR_KEYS:I = 0x1

.field private static final DECSET_BIT_APPLICATION_KEYPAD:I = 0x20

.field private static final DECSET_BIT_AUTOWRAP:I = 0x8

.field private static final DECSET_BIT_BRACKETED_PASTE_MODE:I = 0x400

.field private static final DECSET_BIT_CURSOR_ENABLED:I = 0x10

.field private static final DECSET_BIT_LEFTRIGHT_MARGIN_MODE:I = 0x800

.field private static final DECSET_BIT_MOUSE_PROTOCOL_SGR:I = 0x200

.field private static final DECSET_BIT_MOUSE_TRACKING_BUTTON_EVENT:I = 0x80

.field private static final DECSET_BIT_MOUSE_TRACKING_PRESS_RELEASE:I = 0x40

.field private static final DECSET_BIT_ORIGIN_MODE:I = 0x4

.field private static final DECSET_BIT_RECTANGULAR_CHANGEATTRIBUTE:I = 0x1000

.field private static final DECSET_BIT_REVERSE_VIDEO:I = 0x2

.field private static final DECSET_BIT_SEND_FOCUS_EVENTS:I = 0x100

.field public static final DEFAULT_TERMINAL_CURSOR_STYLE:I = 0x0

.field public static final DEFAULT_TERMINAL_TRANSCRIPT_ROWS:I = 0x7d0

.field private static final ESC:I = 0x1

.field private static final ESC_CSI:I = 0x6

.field private static final ESC_CSI_ARGS_ASTERIX:I = 0x10

.field private static final ESC_CSI_ARGS_SPACE:I = 0xf

.field private static final ESC_CSI_BIGGERTHAN:I = 0xc

.field private static final ESC_CSI_DOLLAR:I = 0x8

.field private static final ESC_CSI_DOUBLE_QUOTE:I = 0x11

.field private static final ESC_CSI_EXCLAMATION:I = 0x13

.field private static final ESC_CSI_QUESTIONMARK:I = 0x7

.field private static final ESC_CSI_QUESTIONMARK_ARG_DOLLAR:I = 0xe

.field private static final ESC_CSI_SINGLE_QUOTE:I = 0x12

.field private static final ESC_NONE:I = 0x0

.field private static final ESC_OSC:I = 0xa

.field private static final ESC_OSC_ESC:I = 0xb

.field private static final ESC_P:I = 0xd

.field private static final ESC_PERCENT:I = 0x9

.field private static final ESC_POUND:I = 0x2

.field private static final ESC_SELECT_LEFT_PAREN:I = 0x3

.field private static final ESC_SELECT_RIGHT_PAREN:I = 0x4

.field private static final LOG_ESCAPE_SEQUENCES:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "TerminalEmulator"

.field private static final MAX_ESCAPE_PARAMETERS:I = 0x10

.field private static final MAX_OSC_STRING_LENGTH:I = 0x2000

.field public static final MOUSE_LEFT_BUTTON:I = 0x0

.field public static final MOUSE_LEFT_BUTTON_MOVED:I = 0x20

.field public static final MOUSE_WHEELDOWN_BUTTON:I = 0x41

.field public static final MOUSE_WHEELUP_BUTTON:I = 0x40

.field public static final TERMINAL_CURSOR_STYLES_LIST:[Ljava/lang/Integer;

.field public static final TERMINAL_CURSOR_STYLE_BAR:I = 0x2

.field public static final TERMINAL_CURSOR_STYLE_BLOCK:I = 0x0

.field public static final TERMINAL_CURSOR_STYLE_UNDERLINE:I = 0x1

.field public static final TERMINAL_TRANSCRIPT_ROWS_MAX:I = 0xc350

.field public static final TERMINAL_TRANSCRIPT_ROWS_MIN:I = 0x64

.field public static final UNICODE_REPLACEMENT_CHAR:I = 0xfffd


# instance fields
.field private mAboutToAutoWrap:Z

.field final mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

.field private mArgIndex:I

.field private final mArgs:[I

.field mBackColor:I

.field private mBottomMargin:I

.field mClient:Lcom/termux/terminal/TerminalSessionClient;

.field public final mColors:Lcom/termux/terminal/TerminalColors;

.field public mColumns:I

.field private mContinueSequence:Z

.field private mCurrentDecSetFlags:I

.field private mCursorBlinkState:Z

.field private mCursorBlinkingEnabled:Z

.field private mCursorCol:I

.field private mCursorRow:I

.field private mCursorStyle:I

.field private mEffect:I

.field private mEscapeState:I

.field mForeColor:I

.field private mInsertMode:Z

.field private mLastEmittedCodePoint:I

.field private mLeftMargin:I

.field private final mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

.field private final mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

.field private mRightMargin:I

.field public mRows:I

.field private mSavedDecSetFlags:I

.field private final mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

.field private final mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

.field private mScreen:Lcom/termux/terminal/TerminalBuffer;

.field private mScrollCounter:I

.field private final mSession:Lcom/termux/terminal/TerminalOutput;

.field private mTabStop:[Z

.field private mTitle:Ljava/lang/String;

.field private final mTitleStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTopMargin:I

.field private mUseLineDrawingG0:Z

.field private mUseLineDrawingG1:Z

.field private mUseLineDrawingUsesG0:Z

.field private mUtf8Index:B

.field private final mUtf8InputBuffer:[B

.field private mUtf8ToFollow:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 148
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/termux/terminal/TerminalEmulator;->TERMINAL_CURSOR_STYLES_LIST:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/termux/terminal/TerminalOutput;IILjava/lang/Integer;Lcom/termux/terminal/TerminalSessionClient;)V
    .locals 2
    .param p1, "session"    # Lcom/termux/terminal/TerminalOutput;
    .param p2, "columns"    # I
    .param p3, "rows"    # I
    .param p4, "transcriptRows"    # Ljava/lang/Integer;
    .param p5, "client"    # Lcom/termux/terminal/TerminalSessionClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "columns",
            "rows",
            "transcriptRows",
            "client"
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    .line 174
    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    .line 188
    new-instance v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    invoke-direct {v1}, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;-><init>()V

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 189
    new-instance v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    invoke-direct {v1}, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;-><init>()V

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 192
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 249
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    .line 252
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    .line 253
    const/4 v0, -0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLastEmittedCodePoint:I

    .line 255
    new-instance v0, Lcom/termux/terminal/TerminalColors;

    invoke-direct {v0}, Lcom/termux/terminal/TerminalColors;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    .line 312
    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    .line 313
    new-instance v0, Lcom/termux/terminal/TerminalBuffer;

    invoke-direct {p0, p4}, Lcom/termux/terminal/TerminalEmulator;->getTerminalTranscriptRows(Ljava/lang/Integer;)I

    move-result v1

    invoke-direct {v0, p2, v1, p3}, Lcom/termux/terminal/TerminalBuffer;-><init>(III)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    .line 314
    new-instance v0, Lcom/termux/terminal/TerminalBuffer;

    invoke-direct {v0, p2, p3, p3}, Lcom/termux/terminal/TerminalBuffer;-><init>(III)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    .line 315
    iput-object p5, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    .line 316
    iput p3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 317
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 318
    new-array v0, p2, [Z

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 319
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    .line 320
    return-void
.end method

.method private blockClear(III)V
    .locals 1
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "w"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sx",
            "sy",
            "w"
        }
    .end annotation

    .line 2031
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 2032
    return-void
.end method

.method private blockClear(IIII)V
    .locals 8
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sx",
            "sy",
            "w",
            "h"
        }
    .end annotation

    .line 2035
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v6

    const/16 v5, 0x20

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 2036
    return-void
.end method

.method private collectOSCArgs(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 2132
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-ge v0, v1, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 2134
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 2136
    :cond_0
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 2138
    :goto_0
    return-void
.end method

.method private continueSequence(I)V
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1294
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 1295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    .line 1296
    return-void
.end method

.method private doCsi(I)V
    .locals 11
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1430
    const/16 v0, 0xc

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 1744
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    goto/16 :goto_7

    .line 1738
    :sswitch_0
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    .line 1739
    goto/16 :goto_7

    .line 1695
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1734
    :pswitch_0
    goto/16 :goto_7

    .line 1730
    :pswitch_1
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1723
    :pswitch_2
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_8

    .line 1726
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    goto/16 :goto_7

    .line 1717
    :pswitch_3
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b]l\u001b\\"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1718
    goto/16 :goto_7

    .line 1714
    :pswitch_4
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b]LIconLabel\u001b\\"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1715
    goto/16 :goto_7

    .line 1711
    :pswitch_5
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "\u001b[9;%d;%dt"

    invoke-static {v4, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1712
    goto/16 :goto_7

    .line 1707
    :pswitch_6
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "\u001b[8;%d;%dt"

    invoke-static {v4, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1708
    goto/16 :goto_7

    .line 1704
    :pswitch_7
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    mul-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    mul-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "\u001b[4;%d;%dt"

    invoke-static {v5, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1705
    goto/16 :goto_7

    .line 1700
    :pswitch_8
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[3;0;0t"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1701
    goto/16 :goto_7

    .line 1697
    :pswitch_9
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[1t"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1698
    goto/16 :goto_7

    .line 1683
    :sswitch_2
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1685
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    sub-int/2addr v0, v3

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1686
    add-int/2addr v0, v3

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v1

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 1688
    invoke-direct {p0, v2, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_7

    .line 1691
    :cond_0
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    .line 1693
    goto/16 :goto_7

    .line 1675
    :sswitch_3
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    .line 1676
    add-int/2addr v0, v1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v1

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 1679
    invoke-direct {p0, v2, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 1681
    goto/16 :goto_7

    .line 1651
    :sswitch_4
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1663
    goto/16 :goto_7

    .line 1660
    :pswitch_a
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "\u001b[%d;%dR"

    invoke-static {v4, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1661
    goto/16 :goto_7

    .line 1654
    :pswitch_b
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 1655
    .local v0, "dsr":[B
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/termux/terminal/TerminalOutput;->write([BII)V

    .line 1656
    goto/16 :goto_7

    .line 1647
    .end local v0    # "dsr":[B
    :sswitch_5
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->selectGraphicRendition()V

    .line 1648
    goto/16 :goto_7

    .line 1644
    :sswitch_6
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->doSetMode(Z)V

    .line 1645
    goto/16 :goto_7

    .line 1641
    :sswitch_7
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->doSetMode(Z)V

    .line 1642
    goto/16 :goto_7

    .line 1626
    :sswitch_8
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 1637
    goto/16 :goto_7

    .line 1631
    :sswitch_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ge v0, v1, :cond_1

    .line 1632
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aput-boolean v2, v1, v0

    .line 1631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1634
    .end local v0    # "i":I
    :cond_1
    goto/16 :goto_7

    .line 1628
    :sswitch_a
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    aput-boolean v2, v0, v1

    .line 1629
    goto/16 :goto_7

    .line 1622
    :sswitch_b
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 1623
    goto/16 :goto_7

    .line 1619
    :sswitch_c
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    .line 1620
    goto/16 :goto_7

    .line 1616
    :sswitch_d
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[?64;1;2;6;9;15;18;21;22c"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1608
    :sswitch_e
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLastEmittedCodePoint:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    goto/16 :goto_7

    .line 1609
    :cond_2
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 1610
    .local v0, "numRepeat":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mLastEmittedCodePoint:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1611
    .end local v1    # "i":I
    :cond_3
    goto/16 :goto_7

    .line 1605
    .end local v0    # "numRepeat":I
    :sswitch_f
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorColRespectingOriginMode(I)V

    .line 1606
    goto/16 :goto_7

    .line 1587
    :sswitch_10
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 1588
    .local v0, "numberOfTabs":I
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1589
    .local v1, "newCol":I
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_5

    .line 1590
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_4

    .line 1591
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_4

    .line 1592
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1593
    goto :goto_3

    .line 1589
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1596
    .end local v2    # "i":I
    :cond_5
    :goto_3
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 1597
    goto/16 :goto_7

    .line 1583
    .end local v0    # "numberOfTabs":I
    .end local v1    # "newCol":I
    :sswitch_11
    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1584
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x1

    const/16 v7, 0x20

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v8

    move v3, v0

    invoke-virtual/range {v2 .. v9}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 1585
    goto/16 :goto_7

    .line 1567
    :sswitch_12
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-nez v0, :cond_6

    .line 1572
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 1573
    .local v0, "linesToScrollArg":I
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int/2addr v1, v3

    .line 1574
    .local v1, "linesBetweenTopAndBottomMargins":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1575
    .local v3, "linesToScroll":I
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    const/4 v5, 0x0

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int v8, v1, v3

    const/4 v9, 0x0

    add-int v10, v6, v3

    invoke-virtual/range {v4 .. v10}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1576
    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v2, v4, v5, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1577
    .end local v0    # "linesToScrollArg":I
    .end local v1    # "linesBetweenTopAndBottomMargins":I
    .end local v3    # "linesToScroll":I
    goto/16 :goto_7

    .line 1579
    :cond_6
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unimplementedSequence(I)V

    .line 1581
    goto/16 :goto_7

    .line 1561
    :sswitch_13
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 1562
    .local v0, "linesToScroll":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_7

    .line 1563
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    .line 1562
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1564
    .end local v1    # "i":I
    :cond_7
    goto/16 :goto_7

    .line 1552
    .end local v0    # "linesToScroll":I
    :sswitch_14
    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1553
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v0, v1

    .line 1554
    .local v0, "cellsAfterCursor":I
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1555
    .local v1, "cellsToDelete":I
    sub-int v9, v0, v1

    .line 1556
    .local v9, "cellsToMove":I
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int v3, v7, v1

    iget v8, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    const/4 v6, 0x1

    move v4, v8

    move v5, v9

    invoke-virtual/range {v2 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1557
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v2, v9

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2, v3, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1559
    .end local v0    # "cellsAfterCursor":I
    .end local v1    # "cellsToDelete":I
    .end local v9    # "cellsToMove":I
    goto/16 :goto_7

    .line 1537
    :sswitch_15
    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1538
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr v0, v1

    .line 1539
    .local v0, "linesAfterCursor":I
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1540
    .local v1, "linesToDelete":I
    sub-int v10, v0, v1

    .line 1541
    .local v10, "linesToMove":I
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    const/4 v4, 0x0

    iget v9, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int v5, v9, v1

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    const/4 v8, 0x0

    move v7, v10

    invoke-virtual/range {v3 .. v9}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1542
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v3, v10

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1544
    .end local v0    # "linesAfterCursor":I
    .end local v1    # "linesToDelete":I
    .end local v10    # "linesToMove":I
    goto/16 :goto_7

    .line 1528
    :sswitch_16
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr v0, v1

    .line 1529
    .restart local v0    # "linesAfterCursor":I
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1530
    .local v1, "linesToInsert":I
    sub-int v10, v0, v1

    .line 1531
    .restart local v10    # "linesToMove":I
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    const/4 v4, 0x0

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    const/4 v8, 0x0

    add-int v9, v5, v1

    move v7, v10

    invoke-virtual/range {v3 .. v9}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1532
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1534
    .end local v0    # "linesAfterCursor":I
    .end local v1    # "linesToInsert":I
    .end local v10    # "linesToMove":I
    goto/16 :goto_7

    .line 1510
    :sswitch_17
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 1521
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 1522
    return-void

    .line 1518
    :pswitch_c
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v2, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1519
    goto :goto_5

    .line 1515
    :pswitch_d
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v1, v3

    invoke-direct {p0, v2, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1516
    goto :goto_5

    .line 1512
    :pswitch_e
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v3, v0

    invoke-direct {p0, v0, v1, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1513
    nop

    .line 1524
    :goto_5
    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1525
    goto/16 :goto_7

    .line 1487
    :sswitch_18
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    packed-switch v0, :pswitch_data_3

    .line 1504
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 1505
    return-void

    .line 1501
    :pswitch_f
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->clearTranscript()V

    .line 1502
    goto :goto_6

    .line 1498
    :pswitch_10
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1499
    goto :goto_6

    .line 1493
    :pswitch_11
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1494
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v1, v3

    invoke-direct {p0, v2, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1495
    goto :goto_6

    .line 1489
    :pswitch_12
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v4, v0

    invoke-direct {p0, v0, v1, v4}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1490
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v1, v0, 0x1

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/2addr v0, v3

    sub-int/2addr v5, v0

    invoke-direct {p0, v2, v1, v4, v5}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1491
    nop

    .line 1507
    :goto_6
    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1508
    goto/16 :goto_7

    .line 1483
    :sswitch_19
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->nextTabStop(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 1484
    goto/16 :goto_7

    .line 1480
    :sswitch_1a
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    sub-int/2addr v1, v3

    invoke-direct {p0, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 1481
    goto/16 :goto_7

    .line 1476
    :sswitch_1b
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 1477
    goto/16 :goto_7

    .line 1473
    :sswitch_1c
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v2, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 1474
    goto/16 :goto_7

    .line 1470
    :sswitch_1d
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v2, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 1471
    goto/16 :goto_7

    .line 1467
    :sswitch_1e
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 1468
    goto/16 :goto_7

    .line 1464
    :sswitch_1f
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v0, v3

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 1465
    goto/16 :goto_7

    .line 1460
    :sswitch_20
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v0, v3

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    .line 1461
    goto :goto_7

    .line 1457
    :sswitch_21
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    .line 1458
    goto :goto_7

    .line 1448
    :sswitch_22
    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1449
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v0, v1

    .line 1450
    .local v0, "columnsAfterCursor":I
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1451
    .local v1, "spacesToInsert":I
    sub-int v9, v0, v1

    .line 1452
    .local v9, "charsToMove":I
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v8, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    const/4 v6, 0x1

    add-int v7, v3, v1

    move v4, v8

    move v5, v9

    invoke-virtual/range {v2 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1453
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2, v3, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1455
    .end local v0    # "columnsAfterCursor":I
    .end local v1    # "spacesToInsert":I
    .end local v9    # "charsToMove":I
    goto :goto_7

    .line 1599
    :sswitch_23
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1600
    goto :goto_7

    .line 1602
    :sswitch_24
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1603
    goto :goto_7

    .line 1444
    :sswitch_25
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1445
    goto :goto_7

    .line 1438
    :sswitch_26
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1439
    goto :goto_7

    .line 1441
    :sswitch_27
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1442
    goto :goto_7

    .line 1435
    :sswitch_28
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1436
    goto :goto_7

    .line 1432
    :sswitch_29
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1433
    goto :goto_7

    .line 1741
    :sswitch_2a
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1742
    nop

    .line 1747
    :cond_8
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2a
        0x21 -> :sswitch_29
        0x22 -> :sswitch_28
        0x24 -> :sswitch_27
        0x27 -> :sswitch_26
        0x2a -> :sswitch_25
        0x3e -> :sswitch_24
        0x3f -> :sswitch_23
        0x40 -> :sswitch_22
        0x41 -> :sswitch_21
        0x42 -> :sswitch_20
        0x43 -> :sswitch_1f
        0x44 -> :sswitch_1e
        0x45 -> :sswitch_1d
        0x46 -> :sswitch_1c
        0x47 -> :sswitch_1b
        0x48 -> :sswitch_1a
        0x49 -> :sswitch_19
        0x4a -> :sswitch_18
        0x4b -> :sswitch_17
        0x4c -> :sswitch_16
        0x4d -> :sswitch_15
        0x50 -> :sswitch_14
        0x53 -> :sswitch_13
        0x54 -> :sswitch_12
        0x58 -> :sswitch_11
        0x5a -> :sswitch_10
        0x60 -> :sswitch_f
        0x61 -> :sswitch_1f
        0x62 -> :sswitch_e
        0x63 -> :sswitch_d
        0x64 -> :sswitch_c
        0x65 -> :sswitch_b
        0x66 -> :sswitch_1a
        0x67 -> :sswitch_8
        0x68 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x6e -> :sswitch_4
        0x72 -> :sswitch_3
        0x73 -> :sswitch_2
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_a
        0x3 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :array_0
    .array-data 1
        0x1bt
        0x5bt
        0x30t
        0x6et
    .end array-data
.end method

.method private doCsiBiggerThan(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1191
    sparse-switch p1, :sswitch_data_0

    .line 1265
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    goto :goto_0

    .line 1262
    :sswitch_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(ignored) CSI > MODIFY RESOURCE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalEmulator"

    invoke-interface {v0, v2, v1}, Lcom/termux/terminal/TerminalSessionClient;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    goto :goto_0

    .line 1203
    :sswitch_1
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[>41;320;0c"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1204
    nop

    .line 1268
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_1
        0x6d -> :sswitch_0
    .end sparse-switch
.end method

.method private doCsiQuestionMark(I)V
    .locals 18
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1007
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 1086
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    goto/16 :goto_c

    .line 1067
    :sswitch_0
    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v7, v6

    if-lt v5, v7, :cond_0

    array-length v5, v6

    sub-int/2addr v5, v4

    iput v5, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 1068
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v5, v6, :cond_4

    .line 1069
    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v6, v6, v5

    .line 1070
    .local v6, "externalBit":I
    invoke-static {v6}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v7

    .line 1071
    .local v7, "internalBit":I
    if-ne v7, v2, :cond_1

    .line 1072
    iget-object v8, v0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring request to save/recall decset bit="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "TerminalEmulator"

    invoke-interface {v8, v10, v9}, Lcom/termux/terminal/TerminalSessionClient;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1074
    :cond_1
    const/16 v8, 0x73

    if-ne v1, v8, :cond_2

    .line 1075
    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    or-int/2addr v8, v7

    iput v8, v0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    goto :goto_2

    .line 1077
    :cond_2
    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    and-int/2addr v8, v7

    if-eqz v8, :cond_3

    move v8, v4

    goto :goto_1

    :cond_3
    move v8, v3

    :goto_1
    invoke-virtual {v0, v8, v6}, Lcom/termux/terminal/TerminalEmulator;->doDecSetOrReset(ZI)V

    .line 1068
    .end local v6    # "externalBit":I
    .end local v7    # "internalBit":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1081
    .end local v5    # "i":I
    :cond_4
    goto/16 :goto_c

    .line 1055
    :sswitch_1
    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1061
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 1062
    return-void

    .line 1058
    :pswitch_0
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    const-string v3, "\u001b[?%d;%d;1R"

    invoke-static {v5, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1059
    goto/16 :goto_c

    .line 1050
    :sswitch_2
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v6, v5

    if-lt v2, v6, :cond_5

    array-length v2, v5

    sub-int/2addr v2, v4

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 1051
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v2, v5, :cond_7

    .line 1052
    const/16 v5, 0x68

    if-ne v1, v5, :cond_6

    move v5, v4

    goto :goto_4

    :cond_6
    move v5, v3

    :goto_4
    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v6, v6, v2

    invoke-virtual {v0, v5, v6}, Lcom/termux/terminal/TerminalEmulator;->doDecSetOrReset(ZI)V

    .line 1051
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1053
    .end local v2    # "i":I
    :cond_7
    goto/16 :goto_c

    .line 1010
    :sswitch_3
    iput-boolean v3, v0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1011
    const/16 v2, 0x20

    .line 1012
    .local v2, "fillChar":I
    const/4 v5, -0x1

    .line 1013
    .local v5, "startCol":I
    const/4 v6, -0x1

    .line 1014
    .local v6, "startRow":I
    const/4 v7, -0x1

    .line 1015
    .local v7, "endCol":I
    const/4 v8, -0x1

    .line 1016
    .local v8, "endRow":I
    const/16 v9, 0x4b

    if-ne v1, v9, :cond_8

    move v9, v4

    goto :goto_5

    :cond_8
    move v9, v3

    :goto_5
    move v11, v9

    .line 1017
    .local v11, "justRow":Z
    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v9

    packed-switch v9, :pswitch_data_1

    .line 1037
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    move v3, v5

    move v4, v6

    move v12, v7

    move v13, v8

    goto :goto_8

    .line 1031
    :pswitch_1
    const/4 v5, 0x0

    .line 1032
    if-eqz v11, :cond_9

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    :cond_9
    move v6, v3

    .line 1033
    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 1034
    if-eqz v11, :cond_a

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v3, v4

    goto :goto_6

    :cond_a
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    :goto_6
    move v8, v3

    .line 1035
    move v3, v5

    move v4, v6

    move v12, v7

    move v13, v8

    goto :goto_8

    .line 1025
    :pswitch_2
    const/4 v5, 0x0

    .line 1026
    if-eqz v11, :cond_b

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    :cond_b
    move v6, v3

    .line 1027
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v7, v3, 0x1

    .line 1028
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v8, v3, 0x1

    .line 1029
    move v3, v5

    move v4, v6

    move v12, v7

    move v13, v8

    goto :goto_8

    .line 1019
    :pswitch_3
    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 1020
    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 1021
    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 1022
    if-eqz v11, :cond_c

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v3, v4

    goto :goto_7

    :cond_c
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    :goto_7
    move v8, v3

    .line 1023
    move v3, v5

    move v4, v6

    move v12, v7

    move v13, v8

    .line 1040
    .end local v5    # "startCol":I
    .end local v6    # "startRow":I
    .end local v7    # "endCol":I
    .end local v8    # "endRow":I
    .local v3, "startCol":I
    .local v4, "startRow":I
    .local v12, "endCol":I
    .local v13, "endRow":I
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v14

    .line 1041
    .local v14, "style":J
    move v5, v4

    move v9, v5

    .local v9, "row":I
    :goto_9
    if-ge v9, v13, :cond_f

    .line 1042
    move v5, v3

    move v10, v5

    .local v10, "col":I
    :goto_a
    if-ge v10, v12, :cond_e

    .line 1043
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v5, v9, v10}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_d

    .line 1044
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    move v6, v10

    move v7, v9

    move v8, v2

    move/from16 v16, v9

    move/from16 v17, v10

    .end local v9    # "row":I
    .end local v10    # "col":I
    .local v16, "row":I
    .local v17, "col":I
    move-wide v9, v14

    invoke-virtual/range {v5 .. v10}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    goto :goto_b

    .line 1043
    .end local v16    # "row":I
    .end local v17    # "col":I
    .restart local v9    # "row":I
    .restart local v10    # "col":I
    :cond_d
    move/from16 v16, v9

    move/from16 v17, v10

    .line 1042
    .end local v9    # "row":I
    .end local v10    # "col":I
    .restart local v16    # "row":I
    .restart local v17    # "col":I
    :goto_b
    add-int/lit8 v10, v17, 0x1

    move/from16 v9, v16

    .end local v17    # "col":I
    .restart local v10    # "col":I
    goto :goto_a

    .end local v16    # "row":I
    .restart local v9    # "row":I
    :cond_e
    move/from16 v16, v9

    move/from16 v17, v10

    .line 1041
    .end local v9    # "row":I
    .end local v10    # "col":I
    .restart local v16    # "row":I
    add-int/lit8 v9, v16, 0x1

    .end local v16    # "row":I
    .restart local v9    # "row":I
    goto :goto_9

    :cond_f
    move/from16 v16, v9

    .line 1047
    .end local v9    # "row":I
    goto :goto_c

    .line 1083
    .end local v2    # "fillChar":I
    .end local v3    # "startCol":I
    .end local v4    # "startRow":I
    .end local v11    # "justRow":Z
    .end local v12    # "endCol":I
    .end local v13    # "endRow":I
    .end local v14    # "style":J
    :sswitch_4
    const/16 v2, 0xe

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1084
    return-void

    .line 1088
    :goto_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_4
        0x4a -> :sswitch_3
        0x4b -> :sswitch_3
        0x68 -> :sswitch_2
        0x6c -> :sswitch_2
        0x6e -> :sswitch_1
        0x72 -> :sswitch_0
        0x73 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private doDeviceControl(I)V
    .locals 18
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 885
    move-object/from16 v0, p0

    move/from16 v1, p1

    packed-switch v1, :pswitch_data_0

    .line 988
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x2000

    if-le v2, v3, :cond_9

    .line 990
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 991
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    goto/16 :goto_c

    .line 888
    :pswitch_0
    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 890
    .local v3, "dcs":Ljava/lang/String;
    const-string v4, "$q"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "\'"

    const-string v6, "\u001b\\"

    if-eqz v4, :cond_1

    .line 891
    const-string v2, "$q\"p"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 893
    const-string v2, "64;1\"p"

    .line 894
    .local v2, "csiString":Ljava/lang/String;
    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u001bP1$r"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 895
    .end local v2    # "csiString":Ljava/lang/String;
    goto/16 :goto_b

    .line 896
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized DECRQSS string: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 898
    :cond_1
    const-string v4, "+q"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 936
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_8

    aget-object v10, v7, v9

    .line 937
    .local v10, "part":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    rem-int/2addr v11, v4

    const-string v12, "TerminalEmulator"

    if-nez v11, :cond_7

    .line 938
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 939
    .local v11, "transBuffer":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_2

    .line 940
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v10, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-int v14, v14

    int-to-char v14, v14

    .line 941
    .local v14, "c":C
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 939
    .end local v14    # "c":C
    add-int/lit8 v13, v13, 0x2

    goto :goto_1

    .line 943
    .end local v13    # "i":I
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 945
    .local v13, "trans":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v4, 0x1

    sparse-switch v14, :sswitch_data_0

    :cond_3
    goto :goto_2

    :sswitch_0
    const-string v14, "name"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x3

    goto :goto_3

    :sswitch_1
    const-string v14, "TN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x2

    goto :goto_3

    :sswitch_2
    const-string v14, "Co"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    goto :goto_3

    :sswitch_3
    const-string v14, "colors"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move v14, v4

    goto :goto_3

    :goto_2
    const/4 v14, -0x1

    :goto_3
    packed-switch v14, :pswitch_data_1

    .line 955
    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v14

    const/16 v15, 0x20

    .line 956
    invoke-direct {v0, v15}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v15

    .line 955
    invoke-static {v13, v14, v15}, Lcom/termux/terminal/KeyHandler;->getCodeFromTermcap(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v14

    .local v14, "responseValue":Ljava/lang/String;
    goto :goto_4

    .line 952
    .end local v14    # "responseValue":Ljava/lang/String;
    :pswitch_1
    const-string v14, "xterm"

    .line 953
    .restart local v14    # "responseValue":Ljava/lang/String;
    goto :goto_4

    .line 948
    .end local v14    # "responseValue":Ljava/lang/String;
    :pswitch_2
    const-string v14, "256"

    .line 949
    .restart local v14    # "responseValue":Ljava/lang/String;
    nop

    .line 959
    :goto_4
    if-nez v14, :cond_5

    .line 960
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1

    :cond_4
    goto :goto_5

    :sswitch_4
    const-string v15, "&8"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move v15, v4

    goto :goto_6

    :sswitch_5
    const-string v4, "%1"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v15, 0x0

    goto :goto_6

    :goto_5
    const/4 v15, -0x1

    :goto_6
    packed-switch v15, :pswitch_data_2

    .line 965
    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled termcap/terminfo name: \'"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v12, v2}, Lcom/termux/terminal/TerminalSessionClient;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 963
    :pswitch_3
    nop

    .line 968
    :goto_7
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u001bP0+r"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_9

    .line 970
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    .local v2, "hexEncoded":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_8
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v12, v15, :cond_6

    .line 972
    new-array v15, v4, [Ljava/lang/Object;

    invoke-virtual {v14, v12}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v15, v16

    const-string v4, "%02X"

    invoke-static {v4, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    goto :goto_8

    .line 974
    .end local v12    # "j":I
    :cond_6
    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u001bP1+r"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 976
    .end local v2    # "hexEncoded":Ljava/lang/StringBuilder;
    .end local v11    # "transBuffer":Ljava/lang/StringBuilder;
    .end local v13    # "trans":Ljava/lang/String;
    .end local v14    # "responseValue":Ljava/lang/String;
    :goto_9
    goto :goto_a

    .line 977
    :cond_7
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid device termcap/terminfo name of odd length: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v12, v4}, Lcom/termux/terminal/TerminalSessionClient;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    .end local v10    # "part":Ljava/lang/String;
    :goto_a
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x2

    goto/16 :goto_0

    .line 984
    :cond_8
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 986
    .end local v3    # "dcs":Ljava/lang/String;
    goto :goto_c

    .line 993
    :cond_9
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 994
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 997
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x50c14290 -> :sswitch_3
        0x88c -> :sswitch_2
        0xa7a -> :sswitch_1
        0x337a8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x4ac -> :sswitch_5
        0x4d2 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private doEsc(I)V
    .locals 20
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1311
    move-object/from16 v0, p0

    const/16 v1, 0x20

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 1395
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 1346
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    .line 1347
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalBuffer;->clearTranscript()V

    .line 1348
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1349
    invoke-direct {v0, v3, v3}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 1350
    goto/16 :goto_0

    .line 1388
    :sswitch_1
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1389
    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1390
    goto/16 :goto_0

    .line 1382
    :sswitch_2
    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1383
    goto/16 :goto_0

    .line 1378
    :sswitch_3
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1379
    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1380
    goto/16 :goto_0

    .line 1367
    :sswitch_4
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    if-gt v1, v7, :cond_0

    .line 1368
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    const/4 v6, 0x0

    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v2, v7, 0x1

    sub-int v9, v1, v2

    const/4 v10, 0x0

    add-int/lit8 v11, v7, 0x1

    invoke-virtual/range {v5 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1369
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_0

    .line 1371
    :cond_0
    sub-int/2addr v1, v4

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 1373
    goto/16 :goto_0

    .line 1362
    :sswitch_5
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    aput-boolean v4, v1, v2

    .line 1363
    goto/16 :goto_0

    .line 1359
    :sswitch_6
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    sub-int/2addr v1, v4

    invoke-direct {v0, v3, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    .line 1360
    goto/16 :goto_0

    .line 1355
    :sswitch_7
    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    :cond_1
    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 1356
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    .line 1357
    goto/16 :goto_0

    .line 1352
    :sswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    .line 1353
    goto/16 :goto_0

    .line 1392
    :sswitch_9
    invoke-direct {v0, v1, v3}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 1393
    goto/16 :goto_0

    .line 1385
    :sswitch_a
    invoke-direct {v0, v1, v4}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 1386
    goto/16 :goto_0

    .line 1337
    :sswitch_b
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_2

    .line 1338
    add-int/2addr v1, v4

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto/16 :goto_0

    .line 1340
    :cond_2
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int/2addr v1, v11

    .line 1341
    .local v1, "rows":I
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v10, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    add-int/lit8 v6, v10, 0x1

    sub-int/2addr v2, v10

    add-int/lit8 v8, v2, -0x1

    move v7, v11

    move v9, v1

    invoke-virtual/range {v5 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1342
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v13, v2, -0x1

    iget v14, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    const/4 v15, 0x1

    const/16 v17, 0x20

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    invoke-static {v2, v4, v3}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v18

    move/from16 v16, v1

    invoke-virtual/range {v12 .. v19}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 1344
    .end local v1    # "rows":I
    goto :goto_0

    .line 1334
    :sswitch_c
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    .line 1335
    goto :goto_0

    .line 1331
    :sswitch_d
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    .line 1332
    goto :goto_0

    .line 1322
    :sswitch_e
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    if-le v1, v6, :cond_3

    .line 1323
    sub-int/2addr v1, v4

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto :goto_0

    .line 1325
    :cond_3
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int/2addr v1, v11

    .line 1326
    .restart local v1    # "rows":I
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v2, v6

    add-int/lit8 v8, v2, -0x1

    add-int/lit8 v10, v6, 0x1

    move v7, v11

    move v9, v1

    invoke-virtual/range {v5 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1327
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v13, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v14, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    const/4 v15, 0x1

    const/16 v17, 0x20

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    invoke-static {v2, v4, v3}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v18

    move/from16 v16, v1

    invoke-virtual/range {v12 .. v19}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 1329
    .end local v1    # "rows":I
    goto :goto_0

    .line 1376
    :sswitch_f
    goto :goto_0

    .line 1319
    :sswitch_10
    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1320
    goto :goto_0

    .line 1316
    :sswitch_11
    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1317
    goto :goto_0

    .line 1313
    :sswitch_12
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1314
    nop

    .line 1398
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_12
        0x28 -> :sswitch_11
        0x29 -> :sswitch_10
        0x30 -> :sswitch_f
        0x36 -> :sswitch_e
        0x37 -> :sswitch_d
        0x38 -> :sswitch_c
        0x39 -> :sswitch_b
        0x3d -> :sswitch_a
        0x3e -> :sswitch_9
        0x44 -> :sswitch_8
        0x45 -> :sswitch_7
        0x46 -> :sswitch_6
        0x48 -> :sswitch_5
        0x4d -> :sswitch_4
        0x4e -> :sswitch_f
        0x50 -> :sswitch_3
        0x5b -> :sswitch_2
        0x5d -> :sswitch_1
        0x63 -> :sswitch_0
    .end sparse-switch
.end method

.method private doEscPound(I)V
    .locals 8
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1299
    packed-switch p1, :pswitch_data_0

    .line 1304
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto :goto_0

    .line 1301
    :pswitch_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/16 v5, 0x45

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 1302
    nop

    .line 1307
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method

.method private doLinefeed()V
    .locals 5

    .line 1277
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1278
    .local v3, "belowScrollingRegion":Z
    :goto_0
    add-int/lit8 v4, v0, 0x1

    .line 1279
    .local v4, "newCursorRow":I
    if-eqz v3, :cond_1

    .line 1281
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_3

    .line 1282
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    goto :goto_1

    .line 1285
    :cond_1
    if-ne v4, v1, :cond_2

    .line 1286
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    .line 1287
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v4, v0, -0x1

    .line 1289
    :cond_2
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    .line 1291
    :cond_3
    :goto_1
    return-void
.end method

.method private doOsc(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1857
    sparse-switch p1, :sswitch_data_0

    .line 1865
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    goto :goto_0

    .line 1862
    :sswitch_0
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1863
    goto :goto_0

    .line 1859
    :sswitch_1
    const-string v0, "\u0007"

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->doOscSetTextParameters(Ljava/lang/String;)V

    .line 1860
    nop

    .line 1868
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method private doOscEsc(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1871
    packed-switch p1, :pswitch_data_0

    .line 1878
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    .line 1879
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    .line 1880
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1873
    :pswitch_0
    const-string v0, "\u001b\\"

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->doOscSetTextParameters(Ljava/lang/String;)V

    .line 1874
    nop

    .line 1883
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch
.end method

.method private doOscSetTextParameters(Ljava/lang/String;)V
    .locals 22
    .param p1, "bellOrStringTerminator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bellOrStringTerminator"
        }
    .end annotation

    .line 1887
    move-object/from16 v1, p0

    const-string v2, "/"

    const-string v3, "%04x"

    const/4 v0, -0x1

    .line 1888
    .local v0, "value":I
    const-string v4, ""

    .line 1890
    .local v4, "textParameter":Ljava/lang/String;
    const/4 v5, 0x0

    move/from16 v21, v5

    move v5, v0

    move/from16 v0, v21

    .local v0, "mOSCArgTokenizerIndex":I
    .local v5, "value":I
    :goto_0
    iget-object v6, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/16 v7, 0x39

    const/16 v8, 0x30

    const/16 v9, 0x3b

    const/4 v10, 0x0

    if-ge v0, v6, :cond_3

    .line 1891
    iget-object v6, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 1892
    .local v6, "b":C
    if-ne v6, v9, :cond_0

    .line 1893
    iget-object v11, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1894
    goto :goto_2

    .line 1895
    :cond_0
    if-lt v6, v8, :cond_2

    if-gt v6, v7, :cond_2

    .line 1896
    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v10, v5, 0xa

    :goto_1
    add-int/lit8 v7, v6, -0x30

    add-int v5, v10, v7

    .line 1890
    .end local v6    # "b":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1898
    .restart local v6    # "b":C
    :cond_2
    invoke-direct {v1, v6}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 1899
    return-void

    .line 1903
    .end local v0    # "mOSCArgTokenizerIndex":I
    .end local v6    # "b":C
    :cond_3
    :goto_2
    const/16 v6, 0xff

    const/4 v11, 0x1

    sparse-switch v5, :sswitch_data_0

    .line 2024
    move-object/from16 v11, p1

    move/from16 v20, v5

    invoke-direct {v1, v5}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    goto/16 :goto_13

    .line 2022
    :sswitch_0
    move-object/from16 v11, p1

    goto/16 :goto_13

    .line 2018
    :sswitch_1
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    add-int/lit8 v2, v5, -0x6e

    add-int/lit16 v2, v2, 0x100

    invoke-virtual {v0, v2}, Lcom/termux/terminal/TerminalColors;->reset(I)V

    .line 2019
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    .line 2020
    move-object/from16 v11, p1

    goto/16 :goto_13

    .line 1993
    :sswitch_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1994
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalColors;->reset()V

    .line 1995
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    move-object/from16 v11, p1

    goto/16 :goto_13

    .line 1997
    :cond_4
    const/4 v0, 0x0

    .line 1998
    .local v0, "lastIndex":I
    const/4 v2, 0x0

    move v3, v2

    move v2, v0

    .line 1999
    .end local v0    # "lastIndex":I
    .local v2, "lastIndex":I
    .local v3, "charIndex":I
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v3, v0, :cond_5

    move v0, v11

    goto :goto_4

    :cond_5
    move v0, v10

    :goto_4
    move v6, v0

    .line 2000
    .local v6, "endOfInput":Z
    if-nez v6, :cond_6

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_8

    .line 2002
    :cond_6
    :try_start_0
    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2003
    .local v0, "colorToReset":I
    iget-object v7, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v7, v0}, Lcom/termux/terminal/TerminalColors;->reset(I)V

    .line 2004
    iget-object v7, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v7}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2005
    if-eqz v6, :cond_7

    .line 2014
    .end local v0    # "colorToReset":I
    .end local v2    # "lastIndex":I
    .end local v3    # "charIndex":I
    .end local v6    # "endOfInput":Z
    move-object/from16 v11, p1

    goto/16 :goto_13

    .line 2006
    .restart local v0    # "colorToReset":I
    .restart local v2    # "lastIndex":I
    .restart local v3    # "charIndex":I
    .restart local v6    # "endOfInput":Z
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 2007
    move v0, v3

    .line 2010
    .end local v2    # "lastIndex":I
    .local v0, "lastIndex":I
    move v2, v0

    goto :goto_5

    .line 2008
    .end local v0    # "lastIndex":I
    .restart local v2    # "lastIndex":I
    :catch_0
    move-exception v0

    .line 1998
    .end local v6    # "endOfInput":Z
    :cond_8
    :goto_5
    add-int/2addr v3, v11

    goto :goto_3

    .line 1980
    .end local v2    # "lastIndex":I
    .end local v3    # "charIndex":I
    :sswitch_3
    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 1982
    .local v2, "startIndex":I
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1983
    .local v0, "clipboardText":Ljava/lang/String;
    iget-object v3, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v3, v0}, Lcom/termux/terminal/TerminalOutput;->onCopyTextToClipboard(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1986
    .end local v0    # "clipboardText":Ljava/lang/String;
    move-object/from16 v11, p1

    goto/16 :goto_13

    .line 1984
    :catch_1
    move-exception v0

    .line 1985
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OSC Manipulate selection, invalid string \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TerminalEmulator"

    invoke-interface {v3, v7, v6}, Lcom/termux/terminal/TerminalSessionClient;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    .end local v0    # "e":Ljava/lang/Exception;
    move-object/from16 v11, p1

    goto/16 :goto_13

    .line 1950
    .end local v2    # "startIndex":I
    :sswitch_4
    add-int/lit8 v0, v5, -0xa

    add-int/lit16 v0, v0, 0x100

    .line 1951
    .local v0, "specialIndex":I
    const/4 v7, 0x0

    .line 1952
    .local v7, "lastSemiIndex":I
    const/4 v8, 0x0

    move v12, v8

    move v8, v7

    move v7, v0

    .line 1953
    .end local v0    # "specialIndex":I
    .local v7, "specialIndex":I
    .local v8, "lastSemiIndex":I
    .local v12, "charIndex":I
    :goto_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v12, v0, :cond_9

    move v0, v11

    goto :goto_7

    :cond_9
    move v0, v10

    :goto_7
    move v13, v0

    .line 1954
    .local v13, "endOfInput":Z
    if-nez v13, :cond_b

    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_a

    goto :goto_8

    :cond_a
    move-object/from16 v11, p1

    move/from16 v20, v5

    move/from16 v17, v10

    goto/16 :goto_c

    .line 1956
    :cond_b
    :goto_8
    :try_start_2
    invoke-virtual {v4, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1957
    .local v0, "colorSpec":Ljava/lang/String;
    const-string v14, "?"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1959
    iget-object v14, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v14, v14, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    aget v14, v14, v7

    .line 1960
    .local v14, "rgb":I
    const/high16 v15, 0xff0000

    and-int/2addr v15, v14

    shr-int/lit8 v15, v15, 0x10

    const v16, 0xffff

    mul-int v15, v15, v16

    div-int/2addr v15, v6

    .line 1961
    .local v15, "r":I
    const v17, 0xff00

    and-int v17, v14, v17

    shr-int/lit8 v17, v17, 0x8

    mul-int v9, v17, v16

    div-int/2addr v9, v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_7

    .line 1962
    .local v9, "g":I
    and-int/lit16 v10, v14, 0xff

    mul-int v10, v10, v16

    :try_start_3
    div-int/2addr v10, v6

    .line 1963
    .local v10, "b":I
    iget-object v6, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5

    move/from16 v18, v8

    .end local v8    # "lastSemiIndex":I
    .local v18, "lastSemiIndex":I
    :try_start_4
    const-string v8, "\u001b]"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ";rgb:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move/from16 v20, v5

    move/from16 v19, v14

    const/4 v14, 0x1

    .end local v5    # "value":I
    .end local v14    # "rgb":I
    .local v19, "rgb":I
    .local v20, "value":I
    :try_start_5
    new-array v5, v14, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    const/16 v17, 0x0

    :try_start_6
    aput-object v14, v5, v17
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    invoke-static {v11, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3

    const/16 v17, 0x0

    :try_start_8
    aput-object v11, v14, v17
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    invoke-static {v8, v3, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Object;

    .line 1964
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3

    const/16 v17, 0x0

    :try_start_a
    aput-object v11, v14, v17

    invoke-static {v8, v3, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2

    move-object/from16 v11, p1

    :try_start_b
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1963
    invoke-virtual {v6, v5}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1965
    .end local v9    # "g":I
    .end local v10    # "b":I
    .end local v15    # "r":I
    .end local v19    # "rgb":I
    goto :goto_9

    .line 1973
    .end local v0    # "colorSpec":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v11, p1

    goto :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v11, p1

    const/16 v17, 0x0

    goto :goto_b

    .end local v20    # "value":I
    .restart local v5    # "value":I
    :catch_4
    move-exception v0

    move-object/from16 v11, p1

    move/from16 v20, v5

    const/16 v17, 0x0

    .end local v5    # "value":I
    .restart local v20    # "value":I
    goto :goto_b

    .end local v18    # "lastSemiIndex":I
    .end local v20    # "value":I
    .restart local v5    # "value":I
    .restart local v8    # "lastSemiIndex":I
    :catch_5
    move-exception v0

    move-object/from16 v11, p1

    move/from16 v20, v5

    move/from16 v18, v8

    const/16 v17, 0x0

    goto :goto_b

    .line 1966
    .restart local v0    # "colorSpec":Ljava/lang/String;
    :cond_c
    move-object/from16 v11, p1

    move/from16 v20, v5

    move/from16 v18, v8

    move/from16 v17, v10

    .end local v5    # "value":I
    .end local v8    # "lastSemiIndex":I
    .restart local v18    # "lastSemiIndex":I
    .restart local v20    # "value":I
    iget-object v5, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v5, v7, v0}, Lcom/termux/terminal/TerminalColors;->tryParseColor(ILjava/lang/String;)V

    .line 1967
    iget-object v5, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v5}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    .line 1969
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 1970
    if-nez v13, :cond_d

    const/16 v5, 0x102

    if-gt v7, v5, :cond_d

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_6

    if-lt v12, v5, :cond_e

    :cond_d
    goto :goto_a

    .line 1972
    :cond_e
    move v0, v12

    .line 1975
    .end local v18    # "lastSemiIndex":I
    .local v0, "lastSemiIndex":I
    move v8, v0

    goto :goto_c

    .line 1971
    .local v0, "colorSpec":Ljava/lang/String;
    .restart local v18    # "lastSemiIndex":I
    :goto_a
    nop

    .line 1978
    .end local v0    # "colorSpec":Ljava/lang/String;
    .end local v12    # "charIndex":I
    .end local v13    # "endOfInput":Z
    move/from16 v5, v20

    goto/16 :goto_13

    .line 1973
    .restart local v12    # "charIndex":I
    .restart local v13    # "endOfInput":Z
    :catch_6
    move-exception v0

    goto :goto_b

    .end local v18    # "lastSemiIndex":I
    .end local v20    # "value":I
    .restart local v5    # "value":I
    .restart local v8    # "lastSemiIndex":I
    :catch_7
    move-exception v0

    move-object/from16 v11, p1

    move/from16 v20, v5

    move/from16 v18, v8

    move/from16 v17, v10

    .end local v5    # "value":I
    .end local v8    # "lastSemiIndex":I
    .restart local v18    # "lastSemiIndex":I
    .restart local v20    # "value":I
    :goto_b
    move/from16 v8, v18

    .line 1952
    .end local v13    # "endOfInput":Z
    .end local v18    # "lastSemiIndex":I
    .restart local v8    # "lastSemiIndex":I
    :goto_c
    const/4 v14, 0x1

    add-int/2addr v12, v14

    move v11, v14

    move/from16 v10, v17

    move/from16 v5, v20

    const/16 v6, 0xff

    const/16 v9, 0x3b

    goto/16 :goto_6

    .line 1917
    .end local v7    # "specialIndex":I
    .end local v8    # "lastSemiIndex":I
    .end local v12    # "charIndex":I
    .end local v20    # "value":I
    .restart local v5    # "value":I
    :sswitch_5
    move/from16 v20, v5

    move/from16 v17, v10

    move v14, v11

    move-object/from16 v11, p1

    .end local v5    # "value":I
    .restart local v20    # "value":I
    const/4 v0, -0x1

    .line 1918
    .local v0, "colorIndex":I
    const/4 v2, -0x1

    .line 1919
    .local v2, "parsingPairStart":I
    const/4 v3, 0x0

    .line 1920
    .local v3, "i":I
    :goto_d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_f

    move v5, v14

    goto :goto_e

    :cond_f
    move/from16 v5, v17

    .line 1921
    .local v5, "endOfInput":Z
    :goto_e
    if-eqz v5, :cond_10

    const/16 v6, 0x3b

    goto :goto_f

    :cond_10
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1922
    .local v6, "b":C
    :goto_f
    const/16 v9, 0x3b

    if-ne v6, v9, :cond_14

    .line 1923
    if-gez v2, :cond_11

    .line 1924
    add-int/lit8 v2, v3, 0x1

    const/16 v10, 0xff

    goto :goto_12

    .line 1926
    :cond_11
    if-ltz v0, :cond_13

    const/16 v10, 0xff

    if-le v0, v10, :cond_12

    goto :goto_10

    .line 1930
    :cond_12
    iget-object v12, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Lcom/termux/terminal/TerminalColors;->tryParseColor(ILjava/lang/String;)V

    .line 1931
    iget-object v12, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v12}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    .line 1932
    const/4 v0, -0x1

    .line 1933
    const/4 v2, -0x1

    goto :goto_12

    .line 1927
    :cond_13
    :goto_10
    invoke-direct {v1, v6}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 1928
    return-void

    .line 1936
    :cond_14
    const/16 v10, 0xff

    if-ltz v2, :cond_15

    goto :goto_12

    .line 1938
    :cond_15
    if-gez v2, :cond_18

    if-lt v6, v8, :cond_18

    if-gt v6, v7, :cond_18

    .line 1939
    if-gez v0, :cond_16

    move/from16 v12, v17

    goto :goto_11

    :cond_16
    mul-int/lit8 v12, v0, 0xa

    :goto_11
    add-int/lit8 v13, v6, -0x30

    add-int/2addr v12, v13

    move v0, v12

    .line 1944
    :goto_12
    if-eqz v5, :cond_17

    .line 1946
    .end local v3    # "i":I
    .end local v5    # "endOfInput":Z
    .end local v6    # "b":C
    move/from16 v5, v20

    goto :goto_13

    .line 1919
    .restart local v3    # "i":I
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1941
    .restart local v5    # "endOfInput":Z
    .restart local v6    # "b":C
    :cond_18
    invoke-direct {v1, v6}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 1942
    return-void

    .line 1907
    .end local v0    # "colorIndex":I
    .end local v2    # "parsingPairStart":I
    .end local v3    # "i":I
    .end local v6    # "b":C
    .end local v20    # "value":I
    .local v5, "value":I
    :sswitch_6
    move-object/from16 v11, p1

    move/from16 v20, v5

    .end local v5    # "value":I
    .restart local v20    # "value":I
    invoke-direct {v1, v4}, Lcom/termux/terminal/TerminalEmulator;->setTitle(Ljava/lang/String;)V

    .line 1908
    nop

    .line 2027
    .end local v20    # "value":I
    .restart local v5    # "value":I
    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 2028
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x2 -> :sswitch_6
        0x4 -> :sswitch_5
        0xa -> :sswitch_4
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0x34 -> :sswitch_3
        0x68 -> :sswitch_2
        0x6e -> :sswitch_1
        0x6f -> :sswitch_1
        0x70 -> :sswitch_1
        0x77 -> :sswitch_0
    .end sparse-switch
.end method

.method private doSetMode(Z)V
    .locals 1
    .param p1, "newValue"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newValue"
        }
    .end annotation

    .line 2044
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 2045
    .local v0, "modeBit":I
    sparse-switch v0, :sswitch_data_0

    .line 2058
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    goto :goto_0

    .line 2056
    :sswitch_0
    goto :goto_0

    .line 2050
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    .line 2052
    goto :goto_0

    .line 2047
    :sswitch_2
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    .line 2048
    nop

    .line 2061
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x14 -> :sswitch_1
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method private emitCodePoint(I)V
    .locals 20
    .param p1, "codePoint"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codePoint"
        }
    .end annotation

    .line 2195
    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mLastEmittedCodePoint:I

    .line 2196
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    if-eqz v2, :cond_1

    .line 2198
    :goto_0
    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    .line 2296
    :sswitch_0
    const/16 v1, 0xb7

    .end local p1    # "codePoint":I
    .local v1, "codePoint":I
    goto/16 :goto_1

    .line 2293
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1
    const/16 v1, 0xa3

    .line 2294
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto/16 :goto_1

    .line 2290
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_2
    const/16 v1, 0x2260

    .line 2291
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto/16 :goto_1

    .line 2287
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_3
    const/16 v1, 0x3c0

    .line 2288
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto/16 :goto_1

    .line 2284
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_4
    const/16 v1, 0x2265

    .line 2285
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto/16 :goto_1

    .line 2281
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_5
    const/16 v1, 0x2264

    .line 2282
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto/16 :goto_1

    .line 2278
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_6
    const/16 v1, 0x2502

    .line 2279
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto/16 :goto_1

    .line 2275
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_7
    const/16 v1, 0x252c

    .line 2276
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2272
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_8
    const/16 v1, 0x2534

    .line 2273
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2269
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_9
    const/16 v1, 0x2524

    .line 2270
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2266
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_a
    const/16 v1, 0x251c

    .line 2267
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2263
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_b
    const/16 v1, 0x23bd

    .line 2264
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2260
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_c
    const/16 v1, 0x23bc

    .line 2261
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2257
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_d
    const/16 v1, 0x2500

    .line 2258
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2254
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_e
    const/16 v1, 0x23bb

    .line 2255
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2251
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_f
    const/16 v1, 0x23ba

    .line 2252
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2248
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_10
    const/16 v1, 0x253c

    .line 2249
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2245
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_11
    const/16 v1, 0x2514

    .line 2246
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2242
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_12
    const/16 v1, 0x250c

    .line 2243
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2239
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_13
    const/16 v1, 0x2510

    .line 2240
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2236
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_14
    const/16 v1, 0x2518

    .line 2237
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2233
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_15
    const/16 v1, 0x240b

    .line 2234
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2230
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_16
    const/16 v1, 0xa

    .line 2231
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2227
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_17
    const/16 v1, 0xb1

    .line 2228
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2224
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_18
    const/16 v1, 0xb0

    .line 2225
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2221
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_19
    const/16 v1, 0x240a

    .line 2222
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2218
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1a
    const/16 v1, 0xd

    .line 2219
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2215
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1b
    const/16 v1, 0x240c

    .line 2216
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2212
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1c
    const/16 v1, 0x2409

    .line 2213
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2209
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1d
    const/16 v1, 0x2592

    .line 2210
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2203
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1e
    const/16 v1, 0x25c6

    .line 2204
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2200
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1f
    const/16 v1, 0x20

    .line 2201
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2206
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_20
    const/16 v1, 0x2588

    .line 2301
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    :cond_1
    :goto_1
    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v8

    .line 2302
    .local v8, "autoWrap":Z
    invoke-static {v1}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v9

    .line 2303
    .local v9, "displayWidth":I
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    const/4 v11, 0x0

    if-ne v2, v3, :cond_2

    move v2, v10

    goto :goto_2

    :cond_2
    move v2, v11

    :goto_2
    move v12, v2

    .line 2305
    .local v12, "cursorInLastColumn":Z
    const/4 v2, 0x2

    if-eqz v8, :cond_6

    .line 2306
    if-eqz v12, :cond_7

    iget-boolean v3, v0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    if-eqz v3, :cond_3

    if-eq v9, v10, :cond_4

    :cond_3
    if-ne v9, v2, :cond_7

    .line 2307
    :cond_4
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-virtual {v2, v3}, Lcom/termux/terminal/TerminalBuffer;->setLineWrap(I)V

    .line 2308
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2309
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v3, v2, 0x1

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    if-ge v3, v4, :cond_5

    .line 2310
    add-int/2addr v2, v10

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    goto :goto_3

    .line 2312
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    goto :goto_3

    .line 2315
    :cond_6
    if-eqz v12, :cond_7

    if-ne v9, v2, :cond_7

    .line 2318
    return-void

    .line 2321
    :cond_7
    :goto_3
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    if-eqz v2, :cond_8

    if-lez v9, :cond_8

    .line 2323
    iget v14, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int v2, v14, v9

    .line 2324
    .local v2, "destCol":I
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    if-ge v2, v3, :cond_8

    .line 2325
    iget-object v13, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int v16, v3, v2

    const/16 v17, 0x1

    move v15, v4

    move/from16 v18, v2

    move/from16 v19, v4

    invoke-virtual/range {v13 .. v19}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 2328
    .end local v2    # "destCol":I
    :cond_8
    if-gtz v9, :cond_9

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    if-lez v2, :cond_9

    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    if-nez v2, :cond_9

    move v2, v10

    goto :goto_4

    :cond_9
    move v2, v11

    :goto_4
    move v13, v2

    .line 2329
    .local v13, "offsetDueToCombiningChar":I
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v3, v13

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v6

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    .line 2331
    if-eqz v8, :cond_b

    if-lez v9, :cond_b

    .line 2332
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v3, v9

    if-ne v2, v3, :cond_a

    move v11, v10

    :cond_a
    iput-boolean v11, v0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2334
    :cond_b
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v2, v9

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v3, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2335
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_20
        0x5f -> :sswitch_1f
        0x60 -> :sswitch_1e
        0x61 -> :sswitch_1d
        0x62 -> :sswitch_1c
        0x63 -> :sswitch_1b
        0x64 -> :sswitch_1a
        0x65 -> :sswitch_19
        0x66 -> :sswitch_18
        0x67 -> :sswitch_17
        0x68 -> :sswitch_16
        0x69 -> :sswitch_15
        0x6a -> :sswitch_14
        0x6b -> :sswitch_13
        0x6c -> :sswitch_12
        0x6d -> :sswitch_11
        0x6e -> :sswitch_10
        0x6f -> :sswitch_f
        0x70 -> :sswitch_e
        0x71 -> :sswitch_d
        0x72 -> :sswitch_c
        0x73 -> :sswitch_b
        0x74 -> :sswitch_a
        0x75 -> :sswitch_9
        0x76 -> :sswitch_8
        0x77 -> :sswitch_7
        0x78 -> :sswitch_6
        0x79 -> :sswitch_5
        0x7a -> :sswitch_4
        0x7b -> :sswitch_3
        0x7c -> :sswitch_2
        0x7d -> :sswitch_1
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method private finishSequence()V
    .locals 1

    .line 2186
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 2187
    return-void
.end method

.method private finishSequenceAndLogError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 2182
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 2183
    return-void
.end method

.method private getArg(IIZ)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I
    .param p3, "treatZeroAsDefault"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "defaultValue",
            "treatZeroAsDefault"
        }
    .end annotation

    .line 2124
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v0, v0, p1

    .line 2125
    .local v0, "result":I
    if-ltz v0, :cond_0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 2126
    :cond_0
    move v0, p2

    .line 2128
    :cond_1
    return v0
.end method

.method private getArg0(I)I
    .locals 2
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 2116
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v0

    return v0
.end method

.method private getArg1(I)I
    .locals 1
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 2120
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v0

    return v0
.end method

.method private getStyle()J
    .locals 3

    .line 2039
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    invoke-static {v0, v1, v2}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTerminalTranscriptRows(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "transcriptRows"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transcriptRows"
        }
    .end annotation

    .line 337
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xc350

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 338
    :cond_1
    :goto_0
    const/16 v0, 0x7d0

    return v0
.end method

.method private isDecsetInternalBitSet(I)Z
    .locals 1
    .param p1, "bit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bit"
        }
    .end annotation

    .line 260
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logError(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorType"
        }
    .end annotation

    .line 2178
    return-void
.end method

.method static mapDecSetBitToInternalBit(I)I
    .locals 1
    .param p0, "decsetBit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decsetBit"
        }
    .end annotation

    .line 280
    sparse-switch p0, :sswitch_data_0

    .line 306
    const/4 v0, -0x1

    return v0

    .line 304
    :sswitch_0
    const/16 v0, 0x400

    return v0

    .line 302
    :sswitch_1
    const/16 v0, 0x200

    return v0

    .line 300
    :sswitch_2
    const/16 v0, 0x100

    return v0

    .line 298
    :sswitch_3
    const/16 v0, 0x80

    return v0

    .line 296
    :sswitch_4
    const/16 v0, 0x40

    return v0

    .line 294
    :sswitch_5
    const/16 v0, 0x800

    return v0

    .line 292
    :sswitch_6
    const/16 v0, 0x20

    return v0

    .line 290
    :sswitch_7
    const/16 v0, 0x10

    return v0

    .line 288
    :sswitch_8
    const/16 v0, 0x8

    return v0

    .line 286
    :sswitch_9
    const/4 v0, 0x4

    return v0

    .line 284
    :sswitch_a
    const/4 v0, 0x2

    return v0

    .line 282
    :sswitch_b
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x5 -> :sswitch_a
        0x6 -> :sswitch_9
        0x7 -> :sswitch_8
        0x19 -> :sswitch_7
        0x42 -> :sswitch_6
        0x45 -> :sswitch_5
        0x3e8 -> :sswitch_4
        0x3ea -> :sswitch_3
        0x3ec -> :sswitch_2
        0x3ee -> :sswitch_1
        0x7d4 -> :sswitch_0
    .end sparse-switch
.end method

.method private nextTabStop(I)I
    .locals 2
    .param p1, "numTabs"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numTabs"
        }
    .end annotation

    .line 1000
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ge v0, v1, :cond_1

    .line 1001
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 1000
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1002
    .end local v0    # "i":I
    :cond_1
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private parseArg(I)V
    .locals 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 2092
    const/16 v0, 0x30

    if-lt p1, v0, :cond_2

    const/16 v0, 0x39

    if-gt p1, v0, :cond_2

    .line 2093
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2094
    aget v2, v1, v0

    .line 2095
    .local v2, "oldValue":I
    add-int/lit8 v3, p1, -0x30

    .line 2097
    .local v3, "thisDigit":I
    if-ltz v2, :cond_0

    .line 2098
    mul-int/lit8 v4, v2, 0xa

    add-int/2addr v4, v3

    .local v4, "value":I
    goto :goto_0

    .line 2100
    .end local v4    # "value":I
    :cond_0
    move v4, v3

    .line 2102
    .restart local v4    # "value":I
    :goto_0
    aput v4, v1, v0

    .line 2104
    .end local v2    # "oldValue":I
    .end local v3    # "thisDigit":I
    .end local v4    # "value":I
    :cond_1
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_1

    .line 2105
    :cond_2
    const/16 v0, 0x3b

    if-ne p1, v0, :cond_4

    .line 2106
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 2107
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 2109
    :cond_3
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_1

    .line 2111
    :cond_4
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 2113
    :goto_1
    return-void
.end method

.method private processByte(B)V
    .locals 10
    .param p1, "byteToProcess"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteToProcess"
        }
    .end annotation

    .line 484
    iget-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    const v1, 0xfffd

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lez v0, :cond_9

    .line 485
    and-int/lit16 v5, p1, 0xc0

    const/4 v6, 0x0

    const/16 v7, 0x80

    if-ne v5, v7, :cond_8

    .line 487
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    iget-byte v5, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    add-int/lit8 v8, v5, 0x1

    int-to-byte v8, v8

    iput-byte v8, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    aput-byte p1, v1, v5

    .line 488
    sub-int/2addr v0, v4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    if-nez v0, :cond_d

    .line 489
    if-ne v8, v3, :cond_0

    const/16 v0, 0x1f

    goto :goto_0

    :cond_0
    if-ne v8, v2, :cond_1

    const/16 v0, 0xf

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    :goto_0
    int-to-byte v0, v0

    .line 490
    .local v0, "firstByteMask":B
    aget-byte v1, v1, v6

    and-int/2addr v1, v0

    .line 491
    .local v1, "codePoint":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    iget-byte v8, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    if-ge v5, v8, :cond_2

    .line 492
    shl-int/lit8 v8, v1, 0x6

    iget-object v9, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    aget-byte v9, v9, v5

    and-int/lit8 v9, v9, 0x3f

    or-int v1, v8, v9

    .line 491
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 493
    .end local v5    # "i":I
    :cond_2
    const/16 v5, 0x7f

    if-gt v1, v5, :cond_3

    if-gt v8, v4, :cond_5

    :cond_3
    const/16 v4, 0x7ff

    if-ge v1, v4, :cond_4

    if-gt v8, v3, :cond_5

    :cond_4
    const v3, 0xffff

    if-ge v1, v3, :cond_6

    if-le v8, v2, :cond_6

    .line 496
    :cond_5
    const v1, 0xfffd

    .line 499
    :cond_6
    iput-byte v6, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v6, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    .line 501
    if-lt v1, v7, :cond_7

    const/16 v2, 0x9f

    if-gt v1, v2, :cond_7

    goto :goto_3

    .line 508
    :cond_7
    invoke-static {v1}, Ljava/lang/Character;->getType(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_2

    .line 511
    :sswitch_0
    const v1, 0xfffd

    .line 513
    :goto_2
    invoke-virtual {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    .line 515
    .end local v0    # "firstByteMask":B
    .end local v1    # "codePoint":I
    :goto_3
    goto :goto_5

    .line 518
    :cond_8
    iput-byte v6, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v6, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    .line 519
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    .line 527
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->processByte(B)V

    goto :goto_5

    .line 530
    :cond_9
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_a

    .line 531
    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    .line 532
    return-void

    .line 533
    :cond_a
    and-int/lit16 v0, p1, 0xe0

    const/16 v5, 0xc0

    if-ne v0, v5, :cond_b

    .line 534
    iput-byte v4, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    goto :goto_4

    .line 535
    :cond_b
    and-int/lit16 v0, p1, 0xf0

    const/16 v4, 0xe0

    if-ne v0, v4, :cond_c

    .line 536
    iput-byte v3, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    goto :goto_4

    .line 537
    :cond_c
    and-int/lit16 v0, p1, 0xf8

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_e

    .line 538
    iput-byte v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    .line 544
    :goto_4
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    iget-byte v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    add-int/lit8 v2, v1, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    aput-byte p1, v0, v1

    .line 546
    :cond_d
    :goto_5
    return-void

    .line 541
    :cond_e
    invoke-virtual {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    .line 542
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method private resizeScreen()V
    .locals 12

    .line 395
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 396
    .local v0, "cursor":[I
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    iget v1, v1, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    :goto_0
    move v7, v1

    .line 397
    .local v7, "newTotalRows":I
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v9

    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result v11

    move-object v8, v0

    invoke-virtual/range {v4 .. v11}, Lcom/termux/terminal/TerminalBuffer;->resize(III[IJZ)V

    .line 398
    aget v1, v0, v2

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 399
    aget v1, v0, v3

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 400
    return-void
.end method

.method private restoreCursor()V
    .locals 4

    .line 1416
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 1417
    .local v0, "state":Lcom/termux/terminal/TerminalEmulator$SavedScreenState;
    :goto_0
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    invoke-direct {p0, v1, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    .line 1418
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    .line 1419
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 1420
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 1421
    const/16 v1, 0xc

    .line 1422
    .local v1, "mask":I
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    not-int v3, v1

    and-int/2addr v2, v3

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    .line 1423
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG0:Z

    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    .line 1424
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG1:Z

    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    .line 1425
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingUsesG0:Z

    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 1426
    return-void
.end method

.method private saveCursor()V
    .locals 2

    .line 1402
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 1403
    .local v0, "state":Lcom/termux/terminal/TerminalEmulator$SavedScreenState;
    :goto_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 1404
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    .line 1405
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    .line 1406
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    .line 1407
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    .line 1408
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    .line 1409
    iget-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    iput-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG0:Z

    .line 1410
    iget-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    iput-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG1:Z

    .line 1411
    iget-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    iput-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingUsesG0:Z

    .line 1412
    return-void
.end method

.method private scrollDownOneLine()V
    .locals 17

    .line 2079
    move-object/from16 v0, p0

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    .line 2080
    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    if-nez v7, :cond_1

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2086
    :cond_0
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    goto :goto_1

    .line 2082
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    add-int/lit8 v4, v8, 0x1

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int v5, v1, v7

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    sub-int/2addr v1, v8

    add-int/lit8 v6, v1, -0x1

    move v3, v7

    invoke-virtual/range {v2 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 2084
    iget-object v9, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v10, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v11, v1, -0x1

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int v12, v1, v10

    const/4 v13, 0x1

    const/16 v14, 0x20

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    int-to-long v1, v1

    move-wide v15, v1

    invoke-virtual/range {v9 .. v16}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 2088
    :goto_1
    return-void
.end method

.method private selectGraphicRendition()V
    .locals 12

    .line 1751
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 1752
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v0, v1, :cond_26

    .line 1753
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v4, v2, v0

    .line 1754
    .local v4, "code":I
    if-gez v4, :cond_2

    .line 1755
    if-lez v1, :cond_1

    .line 1756
    goto/16 :goto_6

    .line 1758
    :cond_1
    const/4 v4, 0x0

    .line 1761
    :cond_2
    const/16 v5, 0x101

    const/16 v6, 0x100

    if-nez v4, :cond_3

    .line 1762
    iput v6, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 1763
    iput v5, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 1764
    const/4 v1, 0x0

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1765
    :cond_3
    if-ne v4, v3, :cond_4

    .line 1766
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1767
    :cond_4
    const/4 v7, 0x2

    if-ne v4, v7, :cond_5

    .line 1768
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v1, v6

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1769
    :cond_5
    const/4 v8, 0x3

    if-ne v4, v8, :cond_6

    .line 1770
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v1, v7

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1771
    :cond_6
    const/4 v8, 0x4

    if-ne v4, v8, :cond_7

    .line 1772
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v1, v8

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1773
    :cond_7
    const/4 v8, 0x5

    const/16 v9, 0x8

    if-ne v4, v8, :cond_8

    .line 1774
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v1, v9

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1775
    :cond_8
    const/4 v10, 0x7

    if-ne v4, v10, :cond_9

    .line 1776
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1777
    :cond_9
    if-ne v4, v9, :cond_a

    .line 1778
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1779
    :cond_a
    const/16 v10, 0x9

    if-ne v4, v10, :cond_b

    .line 1780
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1781
    :cond_b
    const/16 v10, 0xa

    if-ne v4, v10, :cond_c

    goto/16 :goto_6

    .line 1783
    :cond_c
    const/16 v10, 0xb

    if-ne v4, v10, :cond_d

    goto/16 :goto_6

    .line 1785
    :cond_d
    const/16 v10, 0x16

    if-ne v4, v10, :cond_e

    .line 1786
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit16 v1, v1, -0x102

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1787
    :cond_e
    const/16 v10, 0x17

    if-ne v4, v10, :cond_f

    .line 1788
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1789
    :cond_f
    const/16 v10, 0x18

    if-ne v4, v10, :cond_10

    .line 1790
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1791
    :cond_10
    const/16 v10, 0x19

    if-ne v4, v10, :cond_11

    .line 1792
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1793
    :cond_11
    const/16 v10, 0x1b

    if-ne v4, v10, :cond_12

    .line 1794
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1795
    :cond_12
    const/16 v10, 0x1c

    if-ne v4, v10, :cond_13

    .line 1796
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1797
    :cond_13
    const/16 v10, 0x1d

    if-ne v4, v10, :cond_14

    .line 1798
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1799
    :cond_14
    const/16 v10, 0x1e

    if-lt v4, v10, :cond_15

    const/16 v10, 0x25

    if-gt v4, v10, :cond_15

    .line 1800
    add-int/lit8 v1, v4, -0x1e

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_6

    .line 1801
    :cond_15
    const/16 v10, 0x26

    if-eq v4, v10, :cond_1b

    const/16 v11, 0x30

    if-ne v4, v11, :cond_16

    goto :goto_1

    .line 1839
    :cond_16
    const/16 v1, 0x27

    if-ne v4, v1, :cond_17

    .line 1840
    iput v6, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_6

    .line 1841
    :cond_17
    const/16 v1, 0x28

    if-lt v4, v1, :cond_18

    const/16 v1, 0x2f

    if-gt v4, v1, :cond_18

    .line 1842
    add-int/lit8 v1, v4, -0x28

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_6

    .line 1843
    :cond_18
    const/16 v1, 0x31

    if-ne v4, v1, :cond_19

    .line 1844
    iput v5, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_6

    .line 1845
    :cond_19
    const/16 v1, 0x5a

    if-lt v4, v1, :cond_1a

    const/16 v1, 0x61

    if-gt v4, v1, :cond_1a

    .line 1846
    add-int/lit8 v1, v4, -0x5a

    add-int/2addr v1, v9

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_6

    .line 1847
    :cond_1a
    const/16 v1, 0x64

    if-lt v4, v1, :cond_25

    const/16 v1, 0x6b

    if-gt v4, v1, :cond_25

    .line 1848
    add-int/lit8 v1, v4, -0x64

    add-int/2addr v1, v9

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_6

    .line 1805
    :cond_1b
    :goto_1
    add-int/lit8 v5, v0, 0x2

    if-le v5, v1, :cond_1c

    goto/16 :goto_6

    .line 1806
    :cond_1c
    add-int/lit8 v5, v0, 0x1

    aget v5, v2, v5

    .line 1807
    .local v5, "firstArg":I
    if-ne v5, v7, :cond_21

    .line 1808
    add-int/lit8 v6, v0, 0x4

    if-le v6, v1, :cond_1d

    .line 1809
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too few CSI"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ";2 RGB arguments"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "TerminalEmulator"

    invoke-interface {v1, v6, v2}, Lcom/termux/terminal/TerminalSessionClient;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1811
    :cond_1d
    add-int/lit8 v1, v0, 0x2

    aget v1, v2, v1

    .local v1, "red":I
    add-int/lit8 v6, v0, 0x3

    aget v6, v2, v6

    .local v6, "green":I
    add-int/lit8 v7, v0, 0x4

    aget v2, v2, v7

    .line 1812
    .local v2, "blue":I
    if-ltz v1, :cond_20

    if-ltz v6, :cond_20

    if-ltz v2, :cond_20

    const/16 v7, 0xff

    if-gt v1, v7, :cond_20

    if-gt v6, v7, :cond_20

    if-le v2, v7, :cond_1e

    goto :goto_2

    .line 1815
    :cond_1e
    const/high16 v7, -0x1000000

    shl-int/lit8 v8, v1, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, v6, 0x8

    or-int/2addr v7, v8

    or-int/2addr v7, v2

    .line 1816
    .local v7, "argbColor":I
    if-ne v4, v10, :cond_1f

    .line 1817
    iput v7, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto :goto_3

    .line 1819
    :cond_1f
    iput v7, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto :goto_3

    .line 1813
    .end local v7    # "argbColor":I
    :cond_20
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid RGB: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    .line 1822
    :goto_3
    nop

    .end local v1    # "red":I
    .end local v2    # "blue":I
    .end local v6    # "green":I
    add-int/lit8 v0, v0, 0x4

    .line 1823
    goto :goto_5

    .line 1824
    :cond_21
    if-ne v5, v8, :cond_24

    .line 1825
    add-int/lit8 v1, v0, 0x2

    aget v1, v2, v1

    .line 1826
    .local v1, "color":I
    add-int/lit8 v0, v0, 0x2

    .line 1827
    if-ltz v1, :cond_23

    const/16 v2, 0x103

    if-ge v1, v2, :cond_23

    .line 1828
    if-ne v4, v10, :cond_22

    .line 1829
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto :goto_4

    .line 1831
    :cond_22
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 1836
    .end local v1    # "color":I
    :cond_23
    :goto_4
    goto :goto_5

    .line 1837
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ISO-8613-3 SGR first argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    .line 1839
    .end local v5    # "firstArg":I
    :goto_5
    nop

    .line 1752
    .end local v4    # "code":I
    :cond_25
    :goto_6
    add-int/2addr v0, v3

    goto/16 :goto_0

    .line 1854
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method private setCursorCol(I)V
    .locals 1
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "col"
        }
    .end annotation

    .line 2343
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2345
    return-void
.end method

.method private setCursorColRespectingOriginMode(I)V
    .locals 1
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "col"
        }
    .end annotation

    .line 2349
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 2350
    return-void
.end method

.method private setCursorPosition(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 2068
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    .line 2069
    .local v0, "originMode":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2070
    .local v2, "effectiveTopMargin":I
    :goto_0
    if-eqz v0, :cond_1

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 2071
    .local v3, "effectiveBottomMargin":I
    :goto_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 2072
    .local v1, "effectiveLeftMargin":I
    :cond_2
    if-eqz v0, :cond_3

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    goto :goto_2

    :cond_3
    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 2073
    .local v4, "effectiveRightMargin":I
    :goto_2
    add-int v5, v2, p2

    add-int/lit8 v6, v3, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2074
    .local v5, "newRow":I
    add-int v6, v1, p1

    add-int/lit8 v7, v4, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2075
    .local v6, "newCol":I
    invoke-direct {p0, v5, v6}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    .line 2076
    return-void
.end method

.method private setCursorRow(I)V
    .locals 1
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "row"
        }
    .end annotation

    .line 2338
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 2339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2340
    return-void
.end method

.method private setCursorRowCol(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "row",
            "col"
        }
    .end annotation

    .line 2354
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 2355
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2356
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2357
    return-void
.end method

.method private setDecsetinternalBit(IZ)V
    .locals 3
    .param p1, "internalBit"    # I
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "internalBit",
            "set"
        }
    .end annotation

    .line 264
    if-eqz p2, :cond_1

    .line 266
    const/4 v0, 0x0

    const/16 v1, 0x80

    const/16 v2, 0x40

    if-ne p1, v2, :cond_0

    .line 267
    invoke-direct {p0, v1, v0}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto :goto_0

    .line 268
    :cond_0
    if-ne p1, v1, :cond_1

    .line 269
    invoke-direct {p0, v2, v0}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 272
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 273
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    goto :goto_1

    .line 275
    :cond_2
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    .line 277
    :goto_1
    return-void
.end method

.method private setDefaultTabStops()V
    .locals 3

    .line 468
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ge v0, v1, :cond_1

    .line 469
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    aput-boolean v2, v1, v0

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "newTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newTitle"
        }
    .end annotation

    .line 2411
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    .line 2412
    .local v0, "oldTitle":Ljava/lang/String;
    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    .line 2413
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2414
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1, v0, p1}, Lcom/termux/terminal/TerminalOutput;->titleChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    :cond_0
    return-void
.end method

.method private startEscapeSequence()V
    .locals 2

    .line 1271
    const/4 v0, 0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 1272
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 1273
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1274
    return-void
.end method

.method private unimplementedSequence(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 2141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unimplemented sequence char \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (U+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%04x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2142
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 2143
    return-void
.end method

.method private unknownParameter(I)V
    .locals 2
    .param p1, "parameter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameter"
        }
    .end annotation

    .line 2151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2152
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 2153
    return-void
.end method

.method private unknownSequence(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 2146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sequence char \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (numeric value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2147
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 2148
    return-void
.end method


# virtual methods
.method public append([BI)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "length"
        }
    .end annotation

    .line 479
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 480
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->processByte(B)V

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public clearScrollCounter()V
    .locals 1

    .line 2364
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    .line 2365
    return-void
.end method

.method public doDecSetOrReset(ZI)V
    .locals 11
    .param p1, "setting"    # Z
    .param p2, "externalBit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "setting",
            "externalBit"
        }
    .end annotation

    .line 1091
    invoke-static {p2}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v0

    .line 1092
    .local v0, "internalBit":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1093
    invoke-direct {p0, v0, p1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 1095
    :cond_0
    const/4 v1, 0x0

    sparse-switch p2, :sswitch_data_0

    .line 1185
    invoke-direct {p0, p2}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    goto/16 :goto_1

    .line 1183
    :sswitch_0
    goto/16 :goto_1

    .line 1148
    :sswitch_1
    if-eqz p1, :cond_1

    .line 1149
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    goto/16 :goto_1

    .line 1151
    :cond_1
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    .line 1152
    goto/16 :goto_1

    .line 1146
    :sswitch_2
    goto/16 :goto_1

    .line 1132
    :sswitch_3
    if-nez p1, :cond_9

    .line 1133
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1134
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    goto/16 :goto_1

    .line 1158
    :sswitch_4
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    .line 1159
    .local v2, "newScreen":Lcom/termux/terminal/TerminalBuffer;
    :goto_0
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    if-eq v2, v3, :cond_9

    .line 1160
    iget v3, v2, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne v3, v4, :cond_3

    iget v3, v2, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-eq v3, v4, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 1161
    .local v1, "resized":Z
    :cond_4
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    .line 1162
    :cond_5
    iput-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    .line 1163
    if-nez p1, :cond_6

    .line 1164
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget v3, v3, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    .line 1165
    .local v3, "col":I
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 1166
    .local v4, "row":I
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    .line 1167
    if-eqz v1, :cond_6

    .line 1169
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 1170
    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 1174
    .end local v3    # "col":I
    .end local v4    # "row":I
    :cond_6
    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->resizeScreen()V

    .line 1176
    :cond_7
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v2, v3, :cond_8

    .line 1177
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/16 v8, 0x20

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v9

    move-object v3, v2

    invoke-virtual/range {v3 .. v10}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 1178
    .end local v1    # "resized":Z
    :cond_8
    goto :goto_1

    .line 1130
    .end local v2    # "newScreen":Lcom/termux/terminal/TerminalBuffer;
    :sswitch_5
    goto :goto_1

    .line 1124
    :sswitch_6
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    if-eqz v1, :cond_9

    .line 1125
    invoke-interface {v1, p1}, Lcom/termux/terminal/TerminalSessionClient;->onTerminalCursorStateChange(Z)V

    goto :goto_1

    .line 1117
    :sswitch_7
    if-eqz p1, :cond_9

    invoke-direct {p0, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto :goto_1

    .line 1115
    :sswitch_8
    goto :goto_1

    .line 1113
    :sswitch_9
    goto :goto_1

    .line 1103
    :sswitch_a
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1104
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 1105
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 1107
    const/16 v2, 0x800

    invoke-direct {p0, v2, v1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 1109
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v1, v1, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1110
    invoke-direct {p0, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    .line 1111
    goto :goto_1

    .line 1097
    :sswitch_b
    nop

    .line 1188
    :cond_9
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x3 -> :sswitch_a
        0x4 -> :sswitch_9
        0x5 -> :sswitch_8
        0x6 -> :sswitch_7
        0x7 -> :sswitch_6
        0x8 -> :sswitch_6
        0x9 -> :sswitch_6
        0xc -> :sswitch_6
        0x19 -> :sswitch_6
        0x28 -> :sswitch_5
        0x2d -> :sswitch_5
        0x2f -> :sswitch_4
        0x42 -> :sswitch_5
        0x45 -> :sswitch_3
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_2
        0x3ed -> :sswitch_2
        0x3ee -> :sswitch_2
        0x3f7 -> :sswitch_2
        0x40a -> :sswitch_2
        0x417 -> :sswitch_4
        0x418 -> :sswitch_1
        0x419 -> :sswitch_4
        0x7d4 -> :sswitch_0
    .end sparse-switch
.end method

.method public getCursorCol()I
    .locals 1

    .line 407
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    return v0
.end method

.method public getCursorRow()I
    .locals 1

    .line 403
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    return v0
.end method

.method public getCursorStyle()I
    .locals 1

    .line 412
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    return v0
.end method

.method public getScreen()Lcom/termux/terminal/TerminalBuffer;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    return-object v0
.end method

.method public getScrollCounter()I
    .locals 1

    .line 2360
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    return v0
.end method

.method public getSelectedText(IIII)Ljava/lang/String;
    .locals 1
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x1",
            "y1",
            "x2",
            "y2"
        }
    .end annotation

    .line 2401
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 2406
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isAlternateBufferActive()Z
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCursorEnabled()Z
    .locals 1

    .line 435
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isCursorKeysApplicationMode()Z
    .locals 1

    .line 459
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isKeypadApplicationMode()Z
    .locals 1

    .line 455
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isMouseTrackingActive()Z
    .locals 1

    .line 464
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isReverseVideo()Z
    .locals 1

    .line 429
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public paste(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 2421
    const-string v0, "(\u001b|[\u0080-\u009f])"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2423
    const-string v0, "\r?\n"

    const-string v1, "\r"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2426
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    .line 2427
    .local v0, "bracketed":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v2, "\u001b[200~"

    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 2428
    :cond_0
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1, p1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 2429
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v2, "\u001b[201~"

    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 2430
    :cond_1
    return-void
.end method

.method public processCodePoint(I)V
    .locals 28
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 549
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 614
    iput-boolean v3, v0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    .line 615
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    const/4 v5, -0x1

    const/16 v6, 0x1000

    const/16 v7, 0x7e

    const/16 v8, 0x78

    const/16 v9, 0x70

    const/16 v10, 0x30

    const/16 v11, 0x20

    const/4 v12, 0x2

    packed-switch v2, :pswitch_data_0

    .line 875
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_19

    .line 604
    :sswitch_0
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    .line 606
    return-void

    .line 607
    :cond_0
    if-eq v3, v2, :cond_1

    .line 608
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->startEscapeSequence()V

    goto/16 :goto_1a

    .line 610
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    .line 612
    goto/16 :goto_1a

    .line 596
    :sswitch_1
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    if-eqz v2, :cond_2d

    .line 598
    iput v3, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 599
    const/16 v2, 0x7f

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    goto/16 :goto_1a

    .line 592
    :sswitch_2
    iput-boolean v4, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 593
    goto/16 :goto_1a

    .line 589
    :sswitch_3
    iput-boolean v3, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 590
    goto/16 :goto_1a

    .line 586
    :sswitch_4
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 587
    goto/16 :goto_1a

    .line 583
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    .line 584
    goto/16 :goto_1a

    .line 578
    :sswitch_6
    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->nextTabStop(I)I

    move-result v2

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 579
    goto/16 :goto_1a

    .line 559
    :sswitch_7
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    if-ne v2, v3, :cond_3

    .line 561
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr v2, v4

    .line 562
    .local v2, "previousRow":I
    if-ltz v2, :cond_2

    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v3, v2}, Lcom/termux/terminal/TerminalBuffer;->getLineWrap(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 563
    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v3, v2}, Lcom/termux/terminal/TerminalBuffer;->clearLineWrap(I)V

    .line 564
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    .line 566
    .end local v2    # "previousRow":I
    :cond_2
    goto/16 :goto_1a

    .line 567
    :cond_3
    sub-int/2addr v3, v4

    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 569
    goto/16 :goto_1a

    .line 553
    :sswitch_8
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    if-ne v3, v2, :cond_4

    .line 554
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    goto/16 :goto_1a

    .line 556
    :cond_4
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalOutput;->onBell()V

    .line 557
    goto/16 :goto_1a

    .line 551
    :sswitch_9
    goto/16 :goto_1a

    .line 635
    :pswitch_1
    if-ne v1, v9, :cond_5

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    goto/16 :goto_19

    .line 638
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 640
    goto/16 :goto_19

    .line 788
    :pswitch_2
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_6

    .line 789
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v2, v5

    .line 790
    .local v2, "columnsAfterCursor":I
    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 791
    .local v4, "columnsToInsert":I
    sub-int v12, v2, v4

    .line 792
    .local v12, "columnsToMove":I
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    const/4 v7, 0x0

    iget v9, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int v10, v6, v4

    const/4 v11, 0x0

    move v8, v12

    invoke-virtual/range {v5 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 793
    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v5, v3, v4, v6}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 794
    .end local v2    # "columnsAfterCursor":I
    .end local v4    # "columnsToInsert":I
    .end local v12    # "columnsToMove":I
    goto/16 :goto_19

    :cond_6
    if-ne v1, v7, :cond_7

    .line 795
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v2, v5

    .line 796
    .restart local v2    # "columnsAfterCursor":I
    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 797
    .local v4, "columnsToDelete":I
    sub-int v12, v2, v4

    .line 798
    .restart local v12    # "columnsToMove":I
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v10, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int v6, v10, v4

    const/4 v7, 0x0

    iget v9, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/4 v11, 0x0

    move v8, v12

    invoke-virtual/range {v5 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 799
    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v5, v12

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v5, v3, v4, v6}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 800
    .end local v2    # "columnsAfterCursor":I
    .end local v4    # "columnsToDelete":I
    .end local v12    # "columnsToMove":I
    goto/16 :goto_19

    .line 801
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 803
    goto/16 :goto_19

    .line 771
    :pswitch_3
    const/16 v2, 0x71

    if-ne v1, v2, :cond_b

    .line 773
    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    .line 774
    .local v2, "arg":I
    if-eqz v2, :cond_a

    if-ne v2, v12, :cond_8

    goto :goto_0

    .line 777
    :cond_8
    if-ne v2, v4, :cond_9

    .line 779
    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    .line 781
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto :goto_1

    .line 776
    :cond_a
    :goto_0
    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit16 v4, v4, -0x81

    iput v4, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    .line 783
    .end local v2    # "arg":I
    :goto_1
    goto/16 :goto_19

    .line 784
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 786
    goto/16 :goto_19

    .line 866
    :pswitch_4
    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    .line 867
    .local v2, "attributeChangeExtent":I
    if-ne v1, v8, :cond_d

    if-ltz v2, :cond_d

    if-gt v2, v12, :cond_d

    .line 869
    if-ne v2, v12, :cond_c

    goto :goto_2

    :cond_c
    move v4, v3

    :goto_2
    invoke-direct {v0, v6, v4}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto/16 :goto_19

    .line 871
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 873
    goto/16 :goto_19

    .line 838
    .end local v2    # "attributeChangeExtent":I
    :pswitch_5
    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    .line 839
    .local v2, "arg":I
    packed-switch v1, :pswitch_data_1

    .line 862
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 864
    goto/16 :goto_19

    .line 860
    :pswitch_7
    goto/16 :goto_19

    .line 841
    :pswitch_8
    packed-switch v2, :pswitch_data_2

    goto :goto_3

    .line 853
    :pswitch_9
    iput v12, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    goto :goto_3

    .line 849
    :pswitch_a
    iput v4, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    .line 850
    goto :goto_3

    .line 845
    :pswitch_b
    iput v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    .line 846
    nop

    .line 856
    :goto_3
    goto/16 :goto_19

    .line 816
    .end local v2    # "arg":I
    :pswitch_c
    if-ne v1, v9, :cond_13

    .line 818
    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    .line 820
    .local v2, "mode":I
    const/16 v6, 0x2f

    if-eq v2, v6, :cond_11

    const/16 v6, 0x417

    if-eq v2, v6, :cond_11

    const/16 v6, 0x419

    if-ne v2, v6, :cond_e

    goto :goto_5

    .line 824
    :cond_e
    invoke-static {v2}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v6

    .line 825
    .local v6, "internalBit":I
    if-eq v6, v5, :cond_10

    .line 826
    invoke-direct {v0, v6}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v5

    if-eqz v5, :cond_f

    move v5, v4

    goto :goto_4

    :cond_f
    move v5, v12

    .local v5, "value":I
    :goto_4
    goto :goto_6

    .line 828
    .end local v5    # "value":I
    :cond_10
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got DECRQM for unrecognized private DEC mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TerminalEmulator"

    invoke-interface {v5, v8, v7}, Lcom/termux/terminal/TerminalSessionClient;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const/4 v5, 0x0

    .restart local v5    # "value":I
    goto :goto_6

    .line 822
    .end local v5    # "value":I
    .end local v6    # "internalBit":I
    :cond_11
    :goto_5
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v5, v6, :cond_12

    move v5, v4

    goto :goto_6

    :cond_12
    move v5, v12

    .line 832
    .restart local v5    # "value":I
    :goto_6
    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v4, "\u001b[?%d;%d$y"

    invoke-static {v7, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 833
    .end local v2    # "mode":I
    .end local v5    # "value":I
    goto/16 :goto_19

    .line 834
    :cond_13
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 836
    goto/16 :goto_19

    .line 813
    :pswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doDeviceControl(I)V

    .line 814
    goto/16 :goto_19

    .line 645
    :pswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsiBiggerThan(I)V

    .line 646
    goto/16 :goto_19

    .line 810
    :pswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOscEsc(I)V

    .line 811
    goto/16 :goto_19

    .line 807
    :pswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    .line 808
    goto/16 :goto_19

    .line 805
    :pswitch_11
    goto/16 :goto_19

    .line 648
    :pswitch_12
    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v9

    .line 649
    .local v9, "originMode":Z
    if-eqz v9, :cond_14

    iget v10, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    goto :goto_7

    :cond_14
    move v10, v3

    .line 650
    .local v10, "effectiveTopMargin":I
    :goto_7
    if-eqz v9, :cond_15

    iget v13, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    goto :goto_8

    :cond_15
    iget v13, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 651
    .local v13, "effectiveBottomMargin":I
    :goto_8
    if-eqz v9, :cond_16

    iget v14, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    goto :goto_9

    :cond_16
    move v14, v3

    .line 652
    .local v14, "effectiveLeftMargin":I
    :goto_9
    if-eqz v9, :cond_17

    iget v15, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    goto :goto_a

    :cond_17
    iget v15, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 653
    .local v15, "effectiveRightMargin":I
    :goto_a
    const/4 v6, 0x3

    packed-switch v1, :pswitch_data_3

    .line 767
    :pswitch_13
    move/from16 v27, v9

    move/from16 v26, v15

    .end local v9    # "originMode":Z
    .end local v15    # "effectiveRightMargin":I
    .local v26, "effectiveRightMargin":I
    .local v27, "originMode":Z
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 769
    goto/16 :goto_19

    .line 683
    .end local v26    # "effectiveRightMargin":I
    .end local v27    # "originMode":Z
    .restart local v9    # "originMode":Z
    .restart local v15    # "effectiveRightMargin":I
    :pswitch_14
    if-eq v1, v8, :cond_18

    move v2, v4

    goto :goto_b

    :cond_18
    move v2, v3

    .line 684
    .local v2, "erase":Z
    :goto_b
    const/16 v6, 0x7b

    if-ne v1, v6, :cond_19

    move v6, v4

    goto :goto_c

    :cond_19
    move v6, v3

    .line 686
    .local v6, "selective":Z
    :goto_c
    if-eqz v2, :cond_1a

    if-eqz v6, :cond_1a

    move v8, v4

    goto :goto_d

    :cond_1a
    move v8, v3

    .line 687
    .local v8, "keepVisualAttributes":Z
    :goto_d
    const/4 v12, 0x0

    .line 688
    .local v12, "argIndex":I
    if-eqz v2, :cond_1b

    move v5, v11

    goto :goto_e

    :cond_1b
    add-int/lit8 v16, v12, 0x1

    .end local v12    # "argIndex":I
    .local v16, "argIndex":I
    invoke-direct {v0, v12, v5, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    move/from16 v12, v16

    .line 691
    .end local v16    # "argIndex":I
    .local v5, "fillChar":I
    .restart local v12    # "argIndex":I
    :goto_e
    if-lt v5, v11, :cond_1c

    if-le v5, v7, :cond_1d

    :cond_1c
    const/16 v7, 0xa0

    if-lt v5, v7, :cond_23

    const/16 v7, 0xff

    if-gt v5, v7, :cond_23

    .line 694
    :cond_1d
    add-int/lit8 v7, v12, 0x1

    .end local v12    # "argIndex":I
    .local v7, "argIndex":I
    invoke-direct {v0, v12, v4, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v11

    add-int/2addr v11, v10

    add-int/lit8 v12, v13, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 695
    .local v11, "top":I
    add-int/lit8 v12, v7, 0x1

    .end local v7    # "argIndex":I
    .restart local v12    # "argIndex":I
    invoke-direct {v0, v7, v4, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v7

    add-int/2addr v7, v14

    add-int/lit8 v3, v15, 0x1

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 696
    .local v3, "left":I
    add-int/lit8 v7, v12, 0x1

    move/from16 v22, v2

    .end local v2    # "erase":Z
    .end local v12    # "argIndex":I
    .restart local v7    # "argIndex":I
    .local v22, "erase":Z
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v12, v2, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v2

    add-int/2addr v2, v10

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 697
    .local v2, "bottom":I
    iget v12, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v7, v12, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v4

    add-int/2addr v4, v14

    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 698
    .local v4, "right":I
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v23

    .line 699
    .local v23, "style":J
    add-int/lit8 v12, v11, -0x1

    .local v12, "row":I
    :goto_f
    if-ge v12, v2, :cond_22

    .line 700
    add-int/lit8 v16, v3, -0x1

    move/from16 v25, v2

    move/from16 v2, v16

    .local v2, "col":I
    .local v25, "bottom":I
    :goto_10
    if-ge v2, v4, :cond_21

    .line 701
    if-eqz v6, :cond_1e

    move/from16 v26, v3

    .end local v3    # "left":I
    .local v26, "left":I
    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v3, v12, v2}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_20

    goto :goto_11

    .end local v26    # "left":I
    .restart local v3    # "left":I
    :cond_1e
    move/from16 v26, v3

    .line 702
    .end local v3    # "left":I
    .restart local v26    # "left":I
    :goto_11
    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    if-eqz v8, :cond_1f

    invoke-virtual {v3, v12, v2}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v16

    move-wide/from16 v20, v16

    goto :goto_12

    :cond_1f
    move-wide/from16 v20, v23

    :goto_12
    move-object/from16 v16, v3

    move/from16 v17, v2

    move/from16 v18, v12

    move/from16 v19, v5

    invoke-virtual/range {v16 .. v21}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    .line 700
    :cond_20
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v26

    goto :goto_10

    .end local v26    # "left":I
    .restart local v3    # "left":I
    :cond_21
    move/from16 v26, v3

    .line 699
    .end local v2    # "col":I
    .end local v3    # "left":I
    .restart local v26    # "left":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v25

    goto :goto_f

    .end local v25    # "bottom":I
    .end local v26    # "left":I
    .local v2, "bottom":I
    .restart local v3    # "left":I
    :cond_22
    move/from16 v25, v2

    move/from16 v26, v3

    .line 703
    .end local v2    # "bottom":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v11    # "top":I
    .end local v12    # "row":I
    .end local v23    # "style":J
    goto/16 :goto_19

    .line 691
    .end local v7    # "argIndex":I
    .end local v22    # "erase":Z
    .local v2, "erase":Z
    .local v12, "argIndex":I
    :cond_23
    move/from16 v22, v2

    .end local v2    # "erase":Z
    .restart local v22    # "erase":Z
    goto/16 :goto_19

    .line 664
    .end local v5    # "fillChar":I
    .end local v6    # "selective":Z
    .end local v8    # "keepVisualAttributes":Z
    .end local v12    # "argIndex":I
    .end local v22    # "erase":Z
    :pswitch_15
    const/4 v2, 0x0

    invoke-direct {v0, v2, v4, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v3

    sub-int/2addr v3, v4

    add-int/2addr v3, v10

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 665
    .local v2, "topSource":I
    invoke-direct {v0, v4, v4, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v3

    sub-int/2addr v3, v4

    add-int/2addr v3, v14

    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 667
    .local v3, "leftSource":I
    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v12, v5, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    add-int/2addr v5, v10

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 668
    .local v5, "bottomSource":I
    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v6, v7, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v6

    add-int/2addr v6, v14

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 670
    .local v6, "rightSource":I
    const/4 v7, 0x5

    invoke-direct {v0, v7, v4, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v7

    sub-int/2addr v7, v4

    add-int/2addr v7, v10

    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 671
    .local v7, "destionationTop":I
    const/4 v8, 0x6

    invoke-direct {v0, v8, v4, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v8

    sub-int/2addr v8, v4

    add-int/2addr v8, v14

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 673
    .local v4, "destinationLeft":I
    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v8, v7

    sub-int v11, v5, v2

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 674
    .local v8, "heightToCopy":I
    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v11, v4

    sub-int v12, v6, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 675
    .local v11, "widthToCopy":I
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    move-object/from16 v16, v12

    move/from16 v17, v3

    move/from16 v18, v2

    move/from16 v19, v11

    move/from16 v20, v8

    move/from16 v21, v4

    move/from16 v22, v7

    invoke-virtual/range {v16 .. v22}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 676
    goto/16 :goto_19

    .line 709
    .end local v2    # "topSource":I
    .end local v3    # "leftSource":I
    .end local v4    # "destinationLeft":I
    .end local v5    # "bottomSource":I
    .end local v6    # "rightSource":I
    .end local v7    # "destionationTop":I
    .end local v8    # "heightToCopy":I
    .end local v11    # "widthToCopy":I
    :pswitch_16
    const/16 v3, 0x74

    if-ne v1, v3, :cond_24

    move v3, v4

    goto :goto_13

    :cond_24
    const/4 v3, 0x0

    .line 711
    .local v3, "reverse":Z
    :goto_13
    const/4 v5, 0x0

    invoke-direct {v0, v5, v4, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v7

    sub-int/2addr v7, v4

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v5, v10

    .line 712
    .local v5, "top":I
    invoke-direct {v0, v4, v4, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v7

    sub-int/2addr v7, v4

    invoke-static {v7, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v7, v14

    .line 713
    .local v7, "left":I
    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v12, v8, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v8

    add-int/2addr v8, v4

    add-int/lit8 v11, v13, -0x1

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v8, v10

    .line 714
    .local v8, "bottom":I
    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v6, v11, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v6

    add-int/2addr v6, v4

    add-int/lit8 v11, v15, -0x1

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v14

    .line 715
    .local v6, "right":I
    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-lt v11, v2, :cond_29

    .line 716
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v12, v2

    if-lt v11, v12, :cond_25

    array-length v2, v2

    sub-int/2addr v2, v4

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 717
    :cond_25
    const/4 v2, 0x4

    .local v2, "i":I
    :goto_14
    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v2, v4, :cond_28

    .line 718
    const/4 v4, 0x0

    .line 719
    .local v4, "bits":I
    const/4 v11, 0x1

    .line 720
    .local v11, "setOrClear":Z
    const/4 v12, 0x0

    invoke-direct {v0, v2, v12, v12}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v16

    sparse-switch v16, :sswitch_data_1

    goto :goto_15

    .line 751
    :sswitch_a
    const/16 v4, 0x10

    .line 752
    const/4 v11, 0x0

    goto :goto_15

    .line 747
    :sswitch_b
    const/16 v4, 0x8

    .line 748
    const/4 v11, 0x0

    .line 749
    goto :goto_15

    .line 743
    :sswitch_c
    const/4 v4, 0x4

    .line 744
    const/4 v11, 0x0

    .line 745
    goto :goto_15

    .line 739
    :sswitch_d
    const/4 v4, 0x1

    .line 740
    const/4 v11, 0x0

    .line 741
    goto :goto_15

    .line 736
    :sswitch_e
    const/16 v4, 0x10

    .line 737
    goto :goto_15

    .line 733
    :sswitch_f
    const/16 v4, 0x8

    .line 734
    goto :goto_15

    .line 730
    :sswitch_10
    const/4 v4, 0x4

    .line 731
    goto :goto_15

    .line 727
    :sswitch_11
    const/4 v4, 0x1

    .line 728
    goto :goto_15

    .line 722
    :sswitch_12
    const/16 v4, 0x1d

    .line 724
    if-nez v3, :cond_26

    const/4 v11, 0x0

    .line 755
    :cond_26
    :goto_15
    if-eqz v3, :cond_27

    if-nez v11, :cond_27

    move/from16 v27, v9

    move/from16 v26, v15

    const/16 v9, 0x1000

    goto :goto_16

    .line 758
    :cond_27
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    move/from16 v27, v9

    const/16 v9, 0x1000

    .end local v9    # "originMode":Z
    .restart local v27    # "originMode":Z
    invoke-direct {v0, v9}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v19

    move/from16 v26, v15

    .end local v15    # "effectiveRightMargin":I
    .local v26, "effectiveRightMargin":I
    move-object v15, v12

    move/from16 v16, v4

    move/from16 v17, v11

    move/from16 v18, v3

    move/from16 v20, v14

    move/from16 v21, v26

    move/from16 v22, v5

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v6

    invoke-virtual/range {v15 .. v25}, Lcom/termux/terminal/TerminalBuffer;->setOrClearEffect(IZZZIIIIII)V

    .line 717
    .end local v4    # "bits":I
    .end local v11    # "setOrClear":Z
    :goto_16
    add-int/lit8 v2, v2, 0x1

    move/from16 v15, v26

    move/from16 v9, v27

    goto :goto_14

    .end local v26    # "effectiveRightMargin":I
    .end local v27    # "originMode":Z
    .restart local v9    # "originMode":Z
    .restart local v15    # "effectiveRightMargin":I
    :cond_28
    move/from16 v27, v9

    move/from16 v26, v15

    .end local v2    # "i":I
    .end local v9    # "originMode":Z
    .end local v15    # "effectiveRightMargin":I
    .restart local v26    # "effectiveRightMargin":I
    .restart local v27    # "originMode":Z
    goto :goto_19

    .line 715
    .end local v26    # "effectiveRightMargin":I
    .end local v27    # "originMode":Z
    .restart local v9    # "originMode":Z
    .restart local v15    # "effectiveRightMargin":I
    :cond_29
    move/from16 v27, v9

    move/from16 v26, v15

    .end local v9    # "originMode":Z
    .end local v15    # "effectiveRightMargin":I
    .restart local v26    # "effectiveRightMargin":I
    .restart local v27    # "originMode":Z
    goto :goto_19

    .line 642
    .end local v3    # "reverse":Z
    .end local v5    # "top":I
    .end local v6    # "right":I
    .end local v7    # "left":I
    .end local v8    # "bottom":I
    .end local v10    # "effectiveTopMargin":I
    .end local v13    # "effectiveBottomMargin":I
    .end local v14    # "effectiveLeftMargin":I
    .end local v26    # "effectiveRightMargin":I
    .end local v27    # "originMode":Z
    :pswitch_17
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsiQuestionMark(I)V

    .line 643
    goto :goto_19

    .line 632
    :pswitch_18
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsi(I)V

    .line 633
    goto :goto_19

    .line 629
    :pswitch_19
    if-ne v1, v10, :cond_2a

    goto :goto_17

    :cond_2a
    const/4 v4, 0x0

    :goto_17
    iput-boolean v4, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    .line 630
    goto :goto_19

    .line 626
    :pswitch_1a
    if-ne v1, v10, :cond_2b

    goto :goto_18

    :cond_2b
    const/4 v4, 0x0

    :goto_18
    iput-boolean v4, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    .line 627
    goto :goto_19

    .line 623
    :pswitch_1b
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doEscPound(I)V

    .line 624
    goto :goto_19

    .line 620
    :pswitch_1c
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doEsc(I)V

    .line 621
    goto :goto_19

    .line 617
    :pswitch_1d
    if-lt v1, v11, :cond_2c

    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    .line 878
    :cond_2c
    :goto_19
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 881
    :cond_2d
    :goto_1a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x7 -> :sswitch_8
        0x8 -> :sswitch_7
        0x9 -> :sswitch_6
        0xa -> :sswitch_5
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_4
        0xe -> :sswitch_3
        0xf -> :sswitch_2
        0x18 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x71
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x72
        :pswitch_16
        :pswitch_13
        :pswitch_16
        :pswitch_13
        :pswitch_15
        :pswitch_13
        :pswitch_14
        :pswitch_13
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_12
        0x1 -> :sswitch_11
        0x4 -> :sswitch_10
        0x5 -> :sswitch_f
        0x7 -> :sswitch_e
        0x16 -> :sswitch_d
        0x18 -> :sswitch_c
        0x19 -> :sswitch_b
        0x1b -> :sswitch_a
    .end sparse-switch
.end method

.method public reset()V
    .locals 4

    .line 2369
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->setCursorStyle()V

    .line 2370
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 2371
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    .line 2372
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 2373
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    .line 2374
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    .line 2375
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 2376
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 2377
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2378
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    const/16 v3, 0x100

    iput v3, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v3, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 2379
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    const/16 v3, 0x101

    iput v3, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v3, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 2380
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->setDefaultTabStops()V

    .line 2382
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    .line 2383
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 2385
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 2386
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 2387
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    .line 2389
    const/16 v2, 0x8

    invoke-direct {p0, v2, v1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 2390
    const/16 v2, 0x10

    invoke-direct {p0, v2, v1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 2391
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    iput v3, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v3, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    .line 2394
    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    .line 2396
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalColors;->reset()V

    .line 2397
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    .line 2398
    return-void
.end method

.method public resize(II)V
    .locals 5
    .param p1, "columns"    # I
    .param p2, "rows"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columns",
            "rows"
        }
    .end annotation

    .line 368
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-ne v0, p2, :cond_0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne v1, p1, :cond_0

    .line 369
    return-void

    .line 370
    :cond_0
    const/4 v1, 0x2

    if-lt p1, v1, :cond_3

    if-lt p2, v1, :cond_3

    .line 374
    const/4 v1, 0x0

    if-eq v0, p2, :cond_1

    .line 375
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 376
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    .line 377
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 379
    :cond_1
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eq v0, p1, :cond_2

    .line 380
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 381
    .local v0, "oldColumns":I
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 382
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 383
    .local v2, "oldTabStop":[Z
    new-array v3, p1, [Z

    iput-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 384
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->setDefaultTabStops()V

    .line 385
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 386
    .local v3, "toTransfer":I
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 388
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 391
    .end local v0    # "oldColumns":I
    .end local v2    # "oldTabStop":[Z
    .end local v3    # "toTransfer":I
    :cond_2
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->resizeScreen()V

    .line 392
    return-void

    .line 371
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rows="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", columns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMouseEvent(IIIZ)V
    .locals 8
    .param p1, "mouseButton"    # I
    .param p2, "column"    # I
    .param p3, "row"    # I
    .param p4, "pressed"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mouseButton",
            "column",
            "row",
            "pressed"
        }
    .end annotation

    .line 347
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    const/4 p2, 0x1

    .line 348
    :cond_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-le p2, v1, :cond_1

    iget p2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 349
    :cond_1
    if-ge p3, v0, :cond_2

    const/4 p3, 0x1

    .line 350
    :cond_2
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-le p3, v1, :cond_3

    iget p3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 352
    :cond_3
    const/16 v1, 0x20

    if-ne p1, v1, :cond_4

    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_4

    .line 354
    :cond_4
    const/16 v1, 0x200

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x4d

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    .line 355
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u001b[<%d;%d;%d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p4, :cond_5

    goto :goto_0

    :cond_5
    const/16 v3, 0x6d

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_4

    .line 357
    :cond_6
    if-eqz p4, :cond_7

    move v1, p1

    goto :goto_1

    :cond_7
    move v1, v4

    :goto_1
    move p1, v1

    .line 359
    const/16 v1, 0xdf

    if-gt p2, v1, :cond_9

    if-le p3, v1, :cond_8

    goto :goto_2

    :cond_8
    move v1, v5

    goto :goto_3

    :cond_9
    :goto_2
    move v1, v0

    .line 360
    .local v1, "out_of_bounds":Z
    :goto_3
    if-nez v1, :cond_a

    .line 361
    const/4 v6, 0x6

    new-array v6, v6, [B

    const/16 v7, 0x1b

    aput-byte v7, v6, v5

    const/16 v7, 0x5b

    aput-byte v7, v6, v0

    aput-byte v3, v6, v2

    add-int/lit8 v0, p1, 0x20

    int-to-byte v0, v0

    aput-byte v0, v6, v4

    const/4 v0, 0x4

    add-int/lit8 v2, p2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    const/4 v0, 0x5

    add-int/lit8 v2, p3, 0x20

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    move-object v0, v6

    .line 362
    .local v0, "data":[B
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    array-length v3, v0

    invoke-virtual {v2, v0, v5, v3}, Lcom/termux/terminal/TerminalOutput;->write([BII)V

    .line 365
    .end local v0    # "data":[B
    .end local v1    # "out_of_bounds":Z
    :cond_a
    :goto_4
    return-void
.end method

.method public setCursorBlinkState(Z)V
    .locals 0
    .param p1, "cursorBlinkState"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cursorBlinkState"
        }
    .end annotation

    .line 449
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorBlinkState:Z

    .line 450
    return-void
.end method

.method public setCursorBlinkingEnabled(Z)V
    .locals 0
    .param p1, "cursorBlinkingEnabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cursorBlinkingEnabled"
        }
    .end annotation

    .line 445
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorBlinkingEnabled:Z

    .line 446
    return-void
.end method

.method public setCursorStyle()V
    .locals 2

    .line 417
    const/4 v0, 0x0

    .line 419
    .local v0, "cursorStyle":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    if-eqz v1, :cond_0

    .line 420
    invoke-interface {v1}, Lcom/termux/terminal/TerminalSessionClient;->getTerminalCursorStyle()Ljava/lang/Integer;

    move-result-object v0

    .line 422
    :cond_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/termux/terminal/TerminalEmulator;->TERMINAL_CURSOR_STYLES_LIST:[Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 425
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    goto :goto_1

    .line 423
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    .line 426
    :goto_1
    return-void
.end method

.method public shouldCursorBeVisible()Z
    .locals 1

    .line 438
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->isCursorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    const/4 v0, 0x0

    return v0

    .line 441
    :cond_0
    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorBlinkingEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorBlinkState:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TerminalEmulator[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, v1, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, v1, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", margins={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTerminalSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V
    .locals 1
    .param p1, "client"    # Lcom/termux/terminal/TerminalSessionClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "client"
        }
    .end annotation

    .line 323
    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    .line 324
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->setCursorStyle()V

    .line 325
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkState(Z)V

    .line 326
    return-void
.end method
