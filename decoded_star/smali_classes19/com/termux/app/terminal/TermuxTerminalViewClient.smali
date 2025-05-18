.class public Lcom/termux/app/terminal/TermuxTerminalViewClient;
.super Lcom/termux/shared/terminal/TermuxTerminalViewClientBase;
.source "TermuxTerminalViewClient.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxTerminalViewClient"


# instance fields
.field final mActivity:Lcom/termux/app/TermuxActivity;

.field private mShowSoftKeyboardIgnoreOnce:Z

.field private mShowSoftKeyboardRunnable:Ljava/lang/Runnable;

.field private mShowSoftKeyboardWithDelayOnce:Z

.field private mTerminalCursorBlinkerStateAlreadySet:Z

.field final mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

.field mVirtualControlKeyDown:Z

.field mVirtualFnKeyDown:Z


# direct methods
.method public constructor <init>(Lcom/termux/app/TermuxActivity;Lcom/termux/app/terminal/TermuxTerminalSessionClient;)V
    .locals 0
    .param p1, "activity"    # Lcom/termux/app/TermuxActivity;
    .param p2, "termuxTerminalSessionClient"    # Lcom/termux/app/terminal/TermuxTerminalSessionClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "termuxTerminalSessionClient"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/termux/shared/terminal/TermuxTerminalViewClientBase;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    .line 77
    iput-object p2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/termux/app/terminal/TermuxTerminalViewClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/terminal/TermuxTerminalViewClient;

    .line 57
    iget-boolean v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mShowSoftKeyboardIgnoreOnce:Z

    return v0
.end method

.method static synthetic access$002(Lcom/termux/app/terminal/TermuxTerminalViewClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/terminal/TermuxTerminalViewClient;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mShowSoftKeyboardIgnoreOnce:Z

    return p1
.end method

.method static synthetic access$100(Lcom/termux/app/terminal/TermuxTerminalViewClient;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/terminal/TermuxTerminalViewClient;

    .line 57
    invoke-direct {p0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->getShowSoftKeyboardRunnable()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private getShowSoftKeyboardRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mShowSoftKeyboardRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 618
    new-instance v0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$BE9D5qAMZz5Fz7pW2tSQZk2KB5w;

    invoke-direct {v0, p0}, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$BE9D5qAMZz5Fz7pW2tSQZk2KB5w;-><init>(Lcom/termux/app/terminal/TermuxTerminalViewClient;)V

    iput-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mShowSoftKeyboardRunnable:Ljava/lang/Runnable;

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mShowSoftKeyboardRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "down"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event",
            "down"
        }
    .end annotation

    .line 295
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 296
    .local v0, "inputDevice":Landroid/view/InputDevice;
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->areVirtualVolumeKeysDisabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 297
    return v2

    .line 298
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 300
    return v2

    .line 301
    :cond_1
    const/16 v1, 0x19

    const/4 v3, 0x1

    if-ne p1, v1, :cond_2

    .line 302
    iput-boolean p3, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mVirtualControlKeyDown:Z

    .line 303
    return v3

    .line 304
    :cond_2
    const/16 v1, 0x18

    if-ne p1, v1, :cond_3

    .line 305
    iput-boolean p3, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mVirtualFnKeyDown:Z

    .line 306
    return v3

    .line 308
    :cond_3
    return v2
.end method

.method private reportIssueFromTranscript(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "transcriptText"    # Ljava/lang/String;
    .param p2, "addTermuxDebugInfo"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transcriptText",
            "addTermuxDebugInfo"
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const v1, 0x7f100087

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 716
    new-instance v0, Lcom/termux/app/terminal/TermuxTerminalViewClient$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/termux/app/terminal/TermuxTerminalViewClient$2;-><init>(Lcom/termux/app/terminal/TermuxTerminalViewClient;Ljava/lang/String;Z)V

    .line 750
    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient$2;->start()V

    .line 751
    return-void
.end method


# virtual methods
.method public changeFontSize(Z)V
    .locals 2
    .param p1, "increase"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "increase"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->changeFontSize(Z)V

    .line 490
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getFontSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->setTextSize(I)V

    .line 491
    return-void
.end method

.method public copyModeChanged(Z)V
    .locals 1
    .param p1, "copyMode"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "copyMode"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 225
    return-void
.end method

.method public doPaste()V
    .locals 6

    .line 754
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 755
    .local v0, "session":Lcom/termux/terminal/TerminalSession;
    if-nez v0, :cond_0

    return-void

    .line 756
    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 758
    :cond_1
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 759
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    .line 760
    .local v2, "clipData":Landroid/content/ClipData;
    if-nez v2, :cond_2

    return-void

    .line 761
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v3, v4}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 762
    .local v3, "paste":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 763
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    .line 764
    :cond_3
    return-void
.end method

.method public getActivity()Lcom/termux/app/TermuxActivity;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    return-object v0
.end method

.method public isTerminalViewSelected()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->isTerminalViewSelected()Z

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

.method public synthetic lambda$getShowSoftKeyboardRunnable$0$TermuxTerminalViewClient()V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/view/KeyboardUtils;->showSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 620
    return-void
.end method

.method public synthetic lambda$reportIssueFromTranscript$4$TermuxTerminalViewClient(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "transcriptText"    # Ljava/lang/String;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 708
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->reportIssueFromTranscript(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$reportIssueFromTranscript$5$TermuxTerminalViewClient(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "transcriptText"    # Ljava/lang/String;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 709
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->reportIssueFromTranscript(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$showUrlSelection$1$TermuxTerminalViewClient([Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "urls"    # [Ljava/lang/CharSequence;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 679
    aget-object v0, p1, p3

    check-cast v0, Ljava/lang/String;

    .line 680
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 681
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    new-instance v2, Landroid/content/ClipData;

    const-string v3, "text/plain"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/ClipData$Item;

    invoke-direct {v4, v0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 682
    iget-object v2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const v3, 0x7f10008b

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 683
    return-void
.end method

.method public synthetic lambda$showUrlSelection$2$TermuxTerminalViewClient(Landroid/app/AlertDialog;[Ljava/lang/CharSequence;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "urls"    # [Ljava/lang/CharSequence;
    .param p3, "parent"    # Landroid/widget/AdapterView;
    .param p4, "view"    # Landroid/view/View;
    .param p5, "position"    # I
    .param p6, "id"    # J

    .line 689
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 690
    aget-object v0, p2, p5

    check-cast v0, Ljava/lang/String;

    .line 691
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v1, v0}, Lcom/termux/shared/interact/ShareUtils;->openURL(Landroid/content/Context;Ljava/lang/String;)V

    .line 692
    const/4 v1, 0x1

    return v1
.end method

.method public synthetic lambda$showUrlSelection$3$TermuxTerminalViewClient(Landroid/app/AlertDialog;[Ljava/lang/CharSequence;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "urls"    # [Ljava/lang/CharSequence;
    .param p3, "di"    # Landroid/content/DialogInterface;

    .line 687
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 688
    .local v0, "lv":Landroid/widget/ListView;
    new-instance v1, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$ex-vJa26kF_j5c8qbz3kK54DXwQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$ex-vJa26kF_j5c8qbz3kK54DXwQ;-><init>(Lcom/termux/app/terminal/TermuxTerminalViewClient;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 694
    return-void
.end method

.method public onCodePoint(IZLcom/termux/terminal/TerminalSession;)Z
    .locals 9
    .param p1, "codePoint"    # I
    .param p2, "ctrlDown"    # Z
    .param p3, "session"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "codePoint",
            "ctrlDown",
            "session"
        }
    .end annotation

    .line 352
    iget-boolean v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mVirtualFnKeyDown:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 353
    const/4 v0, -0x1

    .line 354
    .local v0, "resultingKeyCode":I
    const/4 v3, -0x1

    .line 355
    .local v3, "resultingCodePoint":I
    const/4 v4, 0x0

    .line 356
    .local v4, "altDown":Z
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    .line 357
    .local v5, "lowerCase":I
    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 360
    :sswitch_0
    const/16 v0, 0x13

    .line 361
    goto :goto_0

    .line 432
    :sswitch_1
    const/4 v3, -0x1

    .line 433
    iget-object v6, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 434
    .local v6, "audio":Landroid/media/AudioManager;
    const/high16 v7, -0x80000000

    invoke-virtual {v6, v1, v7, v2}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    .line 435
    goto :goto_0

    .line 393
    .end local v6    # "audio":Landroid/media/AudioManager;
    :sswitch_2
    const/16 v3, 0x5f

    .line 394
    goto :goto_0

    .line 382
    :sswitch_3
    const/16 v0, 0x3d

    .line 383
    goto :goto_0

    .line 366
    :sswitch_4
    const/16 v0, 0x14

    .line 367
    goto :goto_0

    .line 374
    :sswitch_5
    const/16 v0, 0x5c

    .line 375
    goto :goto_0

    .line 377
    :sswitch_6
    const/16 v0, 0x5d

    .line 378
    goto :goto_0

    .line 396
    :sswitch_7
    const/16 v3, 0x7c

    .line 397
    goto :goto_0

    .line 440
    :sswitch_8
    iget-object v6, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v6}, Lcom/termux/app/TermuxActivity;->toggleTerminalToolbar()V

    .line 441
    iput-boolean v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mVirtualFnKeyDown:Z

    goto :goto_0

    .line 385
    :sswitch_9
    const/16 v0, 0x7c

    .line 386
    goto :goto_0

    .line 388
    :sswitch_a
    const/16 v3, 0x7e

    .line 389
    goto :goto_0

    .line 417
    :sswitch_b
    const/16 v3, 0x1b

    .line 418
    goto :goto_0

    .line 369
    :sswitch_c
    const/16 v0, 0x16

    .line 370
    goto :goto_0

    .line 426
    :sswitch_d
    move v3, v5

    .line 427
    const/4 v4, 0x1

    .line 428
    goto :goto_0

    .line 363
    :sswitch_e
    const/16 v0, 0x15

    .line 364
    goto :goto_0

    .line 409
    :sswitch_f
    add-int/lit8 v6, p1, -0x31

    add-int/lit16 v0, v6, 0x83

    .line 410
    goto :goto_0

    .line 412
    :sswitch_10
    const/16 v0, 0x8c

    .line 413
    goto :goto_0

    .line 420
    :sswitch_11
    const/16 v3, 0x1c

    .line 421
    nop

    .line 445
    :goto_0
    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    .line 446
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v6

    .line 447
    .local v6, "term":Lcom/termux/terminal/TerminalEmulator;
    invoke-virtual {v6}, Lcom/termux/terminal/TerminalEmulator;->isCursorKeysApplicationMode()Z

    move-result v7

    invoke-virtual {v6}, Lcom/termux/terminal/TerminalEmulator;->isKeypadApplicationMode()Z

    move-result v8

    invoke-static {v0, v1, v7, v8}, Lcom/termux/terminal/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .end local v6    # "term":Lcom/termux/terminal/TerminalEmulator;
    goto :goto_1

    .line 448
    :cond_0
    if-eq v3, v6, :cond_1

    .line 449
    invoke-virtual {p3, v4, v3}, Lcom/termux/terminal/TerminalSession;->writeCodePoint(ZI)V

    goto :goto_2

    .line 448
    :cond_1
    :goto_1
    nop

    .line 451
    :goto_2
    return v2

    .line 452
    .end local v0    # "resultingKeyCode":I
    .end local v3    # "resultingCodePoint":I
    .end local v4    # "altDown":Z
    .end local v5    # "lowerCase":I
    :cond_2
    if-eqz p2, :cond_5

    .line 453
    const/16 v0, 0x6a

    if-ne p1, v0, :cond_3

    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 454
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {v0, p3}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    .line 455
    return v2

    .line 458
    :cond_3
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getSessionShortcuts()Ljava/util/List;

    move-result-object v0

    .line 459
    .local v0, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/termux/app/terminal/io/KeyboardShortcut;>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 460
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v3

    .line 461
    .local v3, "codePointLowerCase":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_3
    if-ltz v4, :cond_5

    .line 462
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/termux/app/terminal/io/KeyboardShortcut;

    .line 463
    .local v5, "shortcut":Lcom/termux/app/terminal/io/KeyboardShortcut;
    iget v6, v5, Lcom/termux/app/terminal/io/KeyboardShortcut;->codePoint:I

    if-ne v3, v6, :cond_4

    .line 464
    iget v6, v5, Lcom/termux/app/terminal/io/KeyboardShortcut;->shortcutAction:I

    packed-switch v6, :pswitch_data_0

    goto :goto_4

    .line 475
    :pswitch_0
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    iget-object v6, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v6}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->renameSession(Lcom/termux/terminal/TerminalSession;)V

    .line 476
    return v2

    .line 472
    :pswitch_1
    iget-object v6, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {v6, v1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->switchToSession(Z)V

    .line 473
    return v2

    .line 469
    :pswitch_2
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {v1, v2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->switchToSession(Z)V

    .line 470
    return v2

    .line 466
    :pswitch_3
    iget-object v6, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->addNewSession(ZLjava/lang/String;)V

    .line 467
    return v2

    .line 461
    .end local v5    # "shortcut":Lcom/termux/app/terminal/io/KeyboardShortcut;
    :cond_4
    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 483
    .end local v0    # "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/termux/app/terminal/io/KeyboardShortcut;>;"
    .end local v3    # "codePointLowerCase":I
    .end local v4    # "i":I
    :cond_5
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_11
        0x30 -> :sswitch_10
        0x31 -> :sswitch_f
        0x32 -> :sswitch_f
        0x33 -> :sswitch_f
        0x34 -> :sswitch_f
        0x35 -> :sswitch_f
        0x36 -> :sswitch_f
        0x37 -> :sswitch_f
        0x38 -> :sswitch_f
        0x39 -> :sswitch_f
        0x61 -> :sswitch_e
        0x62 -> :sswitch_d
        0x64 -> :sswitch_c
        0x65 -> :sswitch_b
        0x66 -> :sswitch_d
        0x68 -> :sswitch_a
        0x69 -> :sswitch_9
        0x6b -> :sswitch_8
        0x6c -> :sswitch_7
        0x6e -> :sswitch_6
        0x70 -> :sswitch_5
        0x71 -> :sswitch_8
        0x73 -> :sswitch_4
        0x74 -> :sswitch_3
        0x75 -> :sswitch_2
        0x76 -> :sswitch_1
        0x77 -> :sswitch_0
        0x78 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getFontSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->setTextSize(I)V

    .line 89
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->shouldKeepScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->setKeepScreenOn(Z)V

    .line 90
    return-void
.end method

.method public onEmulatorSet()V
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTerminalCursorBlinkerStateAlreadySet:Z

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->setTerminalCursorBlinkerState(Z)V

    .line 157
    iput-boolean v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTerminalCursorBlinkerStateAlreadySet:Z

    .line 159
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/termux/terminal/TerminalSession;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;
    .param p3, "currentSession"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "e",
            "currentSession"
        }
    .end annotation

    .line 232
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 234
    :cond_0
    const/16 v1, 0x42

    if-ne p1, v1, :cond_1

    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {v1, p3}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    .line 236
    return v0

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->areHardwareKeyboardShortcutsDisabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 238
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 240
    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v1

    .line 242
    .local v1, "unicodeChar":I
    const/16 v3, 0x14

    if-eq p1, v3, :cond_10

    const/16 v3, 0x6e

    if-ne v1, v3, :cond_2

    goto/16 :goto_2

    .line 244
    :cond_2
    const/16 v3, 0x13

    if-eq p1, v3, :cond_f

    const/16 v3, 0x70

    if-ne v1, v3, :cond_3

    goto/16 :goto_1

    .line 246
    :cond_3
    const/16 v3, 0x16

    if-ne p1, v3, :cond_4

    .line 247
    iget-object v2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    goto/16 :goto_3

    .line 248
    :cond_4
    const/16 v3, 0x15

    if-ne p1, v3, :cond_5

    .line 249
    iget-object v2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    goto/16 :goto_3

    .line 250
    :cond_5
    const/16 v3, 0x6b

    if-ne v1, v3, :cond_6

    .line 251
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->onToggleSoftKeyboardRequest()V

    goto/16 :goto_3

    .line 252
    :cond_6
    const/16 v3, 0x6d

    if-ne v1, v3, :cond_7

    .line 253
    iget-object v2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    goto :goto_3

    .line 254
    :cond_7
    const/16 v3, 0x72

    if-ne v1, v3, :cond_8

    .line 255
    iget-object v2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {v2, p3}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->renameSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_3

    .line 256
    :cond_8
    const/16 v3, 0x63

    if-ne v1, v3, :cond_9

    .line 257
    iget-object v3, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->addNewSession(ZLjava/lang/String;)V

    goto :goto_3

    .line 258
    :cond_9
    const/16 v3, 0x75

    if-ne v1, v3, :cond_a

    .line 259
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->showUrlSelection()V

    goto :goto_3

    .line 260
    :cond_a
    const/16 v3, 0x76

    if-ne v1, v3, :cond_b

    .line 261
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->doPaste()V

    goto :goto_3

    .line 262
    :cond_b
    const/16 v3, 0x2b

    if-eq v1, v3, :cond_e

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v4

    if-ne v4, v3, :cond_c

    goto :goto_0

    .line 266
    :cond_c
    const/16 v3, 0x2d

    if-ne v1, v3, :cond_d

    .line 267
    invoke-virtual {p0, v2}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->changeFontSize(Z)V

    goto :goto_3

    .line 268
    :cond_d
    const/16 v2, 0x31

    if-lt v1, v2, :cond_11

    const/16 v2, 0x39

    if-gt v1, v2, :cond_11

    .line 269
    add-int/lit8 v2, v1, -0x31

    .line 270
    .local v2, "index":I
    iget-object v3, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {v3, v2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->switchToSession(I)V

    goto :goto_3

    .line 265
    .end local v2    # "index":I
    :cond_e
    :goto_0
    invoke-virtual {p0, v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->changeFontSize(Z)V

    goto :goto_3

    .line 245
    :cond_f
    :goto_1
    iget-object v3, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {v3, v2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->switchToSession(Z)V

    goto :goto_3

    .line 243
    :cond_10
    :goto_2
    iget-object v2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {v2, v0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->switchToSession(Z)V

    .line 272
    :cond_11
    :goto_3
    return v0

    .line 275
    .end local v1    # "unicodeChar":I
    :cond_12
    return v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "e"
        }
    .end annotation

    .line 285
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->finishActivityIfNotFinishing()V

    .line 287
    const/4 v0, 0x1

    return v0

    .line 290
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
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

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public onReload()V
    .locals 2

    .line 138
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->setSoftKeyboardState(ZZ)V

    .line 141
    invoke-virtual {p0, v1}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->setTerminalCursorBlinkerState(Z)V

    .line 142
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 111
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->setSoftKeyboardState(ZZ)V

    .line 113
    iput-boolean v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTerminalCursorBlinkerStateAlreadySet:Z

    .line 115
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0, v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->setTerminalCursorBlinkerState(Z)V

    .line 121
    iput-boolean v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTerminalCursorBlinkerStateAlreadySet:Z

    .line 123
    :cond_0
    return-void
.end method

.method public onScale(F)F
    .locals 2
    .param p1, "scale"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 165
    const v0, 0x3f666666    # 0.9f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const v0, 0x3f8ccccd    # 1.1f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    return p1

    .line 166
    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 167
    .local v1, "increase":Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->changeFontSize(Z)V

    .line 168
    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    .line 179
    .local v0, "term":Lcom/termux/terminal/TerminalEmulator;
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->shouldOpenTerminalTranscriptURLOnClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/termux/view/TerminalView;->getColumnAndRow(Landroid/view/MotionEvent;Z)[I

    move-result-object v1

    .line 181
    .local v1, "columnAndRow":[I
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    aget v2, v1, v2

    invoke-virtual {v3, v4, v2}, Lcom/termux/terminal/TerminalBuffer;->getWordAtLocation(II)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "wordAtTap":Ljava/lang/String;
    invoke-static {v2}, Lcom/termux/shared/data/UrlUtils;->extractUrls(Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v3

    .line 184
    .local v3, "urlSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 185
    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 186
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v5, v4}, Lcom/termux/shared/interact/ShareUtils;->openURL(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    return-void

    .line 191
    .end local v1    # "columnAndRow":[I
    .end local v2    # "wordAtTap":Ljava/lang/String;
    .end local v3    # "urlSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/CharSequence;>;"
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x2002

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v1}, Lcom/termux/shared/view/KeyboardUtils;->areDisableSoftKeyboardFlagsSet(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/view/KeyboardUtils;->showSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 195
    :cond_1
    const-string v1, "TermuxTerminalViewClient"

    const-string v2, "Not showing soft keyboard onSingleTapUp since its disabled"

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_2
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->isTerminalViewKeyLoggingEnabled()Z

    move-result v0

    .line 99
    .local v0, "isTerminalViewKeyLoggingEnabled":Z
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/termux/view/TerminalView;->setIsTerminalViewKeyLoggingEnabled(Z)V

    .line 102
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTermuxActivityRootView()Lcom/termux/app/terminal/TermuxActivityRootView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/termux/app/terminal/TermuxActivityRootView;->setIsRootViewLoggingEnabled(Z)V

    .line 103
    invoke-static {v0}, Lcom/termux/shared/view/ViewUtils;->setIsViewUtilsLoggingEnabled(Z)V

    .line 104
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->setTerminalCursorBlinkerState(Z)V

    .line 131
    return-void
.end method

.method public onToggleSoftKeyboardRequest()V
    .locals 4

    .line 501
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->shouldEnableDisableSoftKeyboardOnToggle()Z

    move-result v0

    const-string v1, "TermuxTerminalViewClient"

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/shared/view/KeyboardUtils;->areDisableSoftKeyboardFlagsSet(Landroid/app/Activity;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 504
    const-string v0, "Disabling soft keyboard on toggle"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setSoftKeyboardEnabled(Z)V

    .line 506
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/view/KeyboardUtils;->disableSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    .line 512
    :cond_0
    const-string v0, "Enabling soft keyboard on toggle"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setSoftKeyboardEnabled(Z)V

    .line 514
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/shared/view/KeyboardUtils;->clearDisableSoftKeyboardFlags(Landroid/app/Activity;)V

    .line 515
    iget-boolean v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mShowSoftKeyboardWithDelayOnce:Z

    if-eqz v0, :cond_1

    .line 516
    iput-boolean v2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mShowSoftKeyboardWithDelayOnce:Z

    .line 517
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v0

    invoke-direct {p0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->getShowSoftKeyboardRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/view/TerminalView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 518
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->requestFocus()Z

    goto :goto_0

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/view/KeyboardUtils;->showSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 526
    :cond_2
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->isSoftKeyboardEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 527
    const-string v0, "Maintaining disabled soft keyboard on toggle"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/view/KeyboardUtils;->disableSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    .line 530
    :cond_3
    const-string v0, "Showing/Hiding soft keyboard on toggle"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/shared/view/KeyboardUtils;->clearDisableSoftKeyboardFlags(Landroid/app/Activity;)V

    .line 532
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/shared/view/KeyboardUtils;->toggleSoftKeyboard(Landroid/content/Context;)V

    .line 535
    :goto_0
    return-void
.end method

.method public readAltKey()Z
    .locals 1

    .line 320
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->ALT:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    invoke-virtual {p0, v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->readExtraKeysSpecialButton(Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;)Z

    move-result v0

    return v0
.end method

.method public readControlKey()Z
    .locals 1

    .line 315
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->CTRL:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    invoke-virtual {p0, v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->readExtraKeysSpecialButton(Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mVirtualControlKeyDown:Z

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

.method public readExtraKeysSpecialButton(Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;)Z
    .locals 4
    .param p1, "specialButton"    # Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "specialButton"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getExtraKeysView()Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getExtraKeysView()Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->readSpecialButton(Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 336
    .local v0, "state":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read an unregistered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " special button value from extra keys."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TermuxTerminalViewClient"

    invoke-static {v3, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return v1

    .line 340
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public readFnKey()Z
    .locals 1

    .line 330
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->FN:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    invoke-virtual {p0, v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->readExtraKeysSpecialButton(Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;)Z

    move-result v0

    return v0
.end method

.method public readShiftKey()Z
    .locals 1

    .line 325
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->SHIFT:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    invoke-virtual {p0, v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->readExtraKeysSpecialButton(Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;)Z

    move-result v0

    return v0
.end method

.method public reportIssueFromTranscript()V
    .locals 10

    .line 700
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 701
    .local v0, "session":Lcom/termux/terminal/TerminalSession;
    if-nez v0, :cond_0

    return-void

    .line 703
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/shell/ShellUtils;->getTerminalSessionTranscriptText(Lcom/termux/terminal/TerminalSession;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, "transcriptText":Ljava/lang/String;
    if-nez v1, :cond_1

    return-void

    .line 706
    :cond_1
    iget-object v2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const v3, 0x7f100080

    .line 707
    invoke-virtual {v2, v3}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const v5, 0x7f100035

    .line 708
    invoke-virtual {v3, v5}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$SJvx2wDyYvbBSJDr8y4nkITMjbA;

    invoke-direct {v6, p0, v1}, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$SJvx2wDyYvbBSJDr8y4nkITMjbA;-><init>(Lcom/termux/app/terminal/TermuxTerminalViewClient;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const v7, 0x7f100027

    .line 709
    invoke-virtual {v3, v7}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$6uLYPZnrCTsbnw0kfYeFcdQ5Tm0;

    invoke-direct {v8, p0, v1}, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$6uLYPZnrCTsbnw0kfYeFcdQ5Tm0;-><init>(Lcom/termux/app/terminal/TermuxTerminalViewClient;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 706
    const-string v3, "Termux Report Issue"

    invoke-static/range {v2 .. v9}, Lcom/termux/shared/interact/MessageDialogUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 711
    return-void
.end method

.method public setSoftKeyboardState(ZZ)V
    .locals 5
    .param p1, "isStartup"    # Z
    .param p2, "isReloadTermuxProperties"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isStartup",
            "isReloadTermuxProperties"
        }
    .end annotation

    .line 538
    const/4 v0, 0x0

    .line 547
    .local v0, "noShowKeyboard":Z
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    .line 548
    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->isSoftKeyboardEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    .line 549
    invoke-virtual {v3}, Lcom/termux/app/TermuxActivity;->getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->isSoftKeyboardEnabledOnlyIfNoHardware()Z

    move-result v3

    .line 547
    invoke-static {v1, v2, v3}, Lcom/termux/shared/view/KeyboardUtils;->shouldSoftKeyboardBeDisabled(Landroid/content/Context;ZZ)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "TermuxTerminalViewClient"

    if-eqz v1, :cond_0

    .line 550
    const-string v1, "Maintaining disabled soft keyboard"

    invoke-static {v3, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/termux/shared/view/KeyboardUtils;->disableSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 552
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/view/TerminalView;->requestFocus()Z

    .line 553
    const/4 v0, 0x1

    .line 557
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->isOnResumeAfterOnCreate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    iput-boolean v2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mShowSoftKeyboardWithDelayOnce:Z

    goto :goto_0

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v1}, Lcom/termux/shared/view/KeyboardUtils;->setSoftInputModeAdjustResize(Landroid/app/Activity;)V

    .line 564
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v1}, Lcom/termux/shared/view/KeyboardUtils;->clearDisableSoftKeyboardFlags(Landroid/app/Activity;)V

    .line 567
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->shouldSoftKeyboardBeHiddenOnStartup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 568
    const-string v1, "Hiding soft keyboard on startup"

    invoke-static {v3, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v1}, Lcom/termux/shared/view/KeyboardUtils;->setSoftKeyboardAlwaysHiddenFlags(Landroid/app/Activity;)V

    .line 572
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/termux/shared/view/KeyboardUtils;->hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 573
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/view/TerminalView;->requestFocus()Z

    .line 574
    const/4 v0, 0x1

    .line 576
    iput-boolean v2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mShowSoftKeyboardIgnoreOnce:Z

    .line 580
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v1

    new-instance v2, Lcom/termux/app/terminal/TermuxTerminalViewClient$1;

    invoke-direct {v2, p0}, Lcom/termux/app/terminal/TermuxTerminalViewClient$1;-><init>(Lcom/termux/app/terminal/TermuxTerminalViewClient;)V

    invoke-virtual {v1, v2}, Lcom/termux/view/TerminalView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 604
    if-nez p2, :cond_2

    if-nez v0, :cond_2

    .line 610
    const-string v1, "Requesting TerminalView focus and showing soft keyboard"

    invoke-static {v3, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/view/TerminalView;->requestFocus()Z

    .line 612
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v1

    invoke-direct {p0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->getShowSoftKeyboardRunnable()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Lcom/termux/view/TerminalView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 614
    :cond_2
    return-void
.end method

.method public setTerminalCursorBlinkerState(Z)V
    .locals 3
    .param p1, "start"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start"
        }
    .end annotation

    .line 628
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 630
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getTerminalCursorBlinkRate()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/termux/view/TerminalView;->setTerminalCursorBlinkerRate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/termux/view/TerminalView;->setTerminalCursorBlinkerState(ZZ)V

    goto :goto_0

    .line 633
    :cond_0
    const-string v0, "TermuxTerminalViewClient"

    const-string v1, "Failed to start cursor blinker"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_1
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/termux/view/TerminalView;->setTerminalCursorBlinkerState(ZZ)V

    .line 638
    :goto_0
    return-void
.end method

.method public shareSessionTranscript()V
    .locals 6

    .line 643
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 644
    .local v0, "session":Lcom/termux/terminal/TerminalSession;
    if-nez v0, :cond_0

    return-void

    .line 646
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/shell/ShellUtils;->getTerminalSessionTranscriptText(Lcom/termux/terminal/TerminalSession;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 647
    .local v3, "transcriptText":Ljava/lang/String;
    if-nez v3, :cond_1

    return-void

    .line 651
    :cond_1
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "text/plain"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    const v5, 0x19000

    invoke-static {v3, v5, v1, v2, v1}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 654
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const v5, 0x7f1000f7

    invoke-virtual {v2, v5}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const v2, 0x7f1000f8

    invoke-virtual {v1, v2}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 657
    :catch_0
    move-exception v1

    .line 658
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get share session transcript of length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TermuxTerminalViewClient"

    invoke-static {v4, v2, v1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 660
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public shouldBackButtonBeMappedToEscape()Z
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->isBackKeyTheEscapeKey()Z

    move-result v0

    return v0
.end method

.method public shouldEnforceCharBasedInput()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->isEnforcingCharBasedInput()Z

    move-result v0

    return v0
.end method

.method public shouldUseCtrlSpaceWorkaround()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->isUsingCtrlSpaceWorkaround()Z

    move-result v0

    return v0
.end method

.method public showUrlSelection()V
    .locals 6

    .line 663
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 664
    .local v0, "session":Lcom/termux/terminal/TerminalSession;
    if-nez v0, :cond_0

    return-void

    .line 666
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/termux/shared/shell/ShellUtils;->getTerminalSessionTranscriptText(Lcom/termux/terminal/TerminalSession;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Lcom/termux/shared/data/UrlUtils;->extractUrls(Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 669
    .local v2, "urlSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 670
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1000f6

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 671
    return-void

    .line 674
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    .line 675
    .local v3, "urls":[Ljava/lang/CharSequence;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 678
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$WgS91Jpp2VPDOfpM8EoPYrmtG8I;

    invoke-direct {v5, p0, v3}, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$WgS91Jpp2VPDOfpM8EoPYrmtG8I;-><init>(Lcom/termux/app/terminal/TermuxTerminalViewClient;[Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f1000f5

    .line 683
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 686
    .local v4, "dialog":Landroid/app/AlertDialog;
    new-instance v5, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$PB6tf_00KUgiN9sZHqGNVSA-rNM;

    invoke-direct {v5, p0, v4, v3}, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$PB6tf_00KUgiN9sZHqGNVSA-rNM;-><init>(Lcom/termux/app/terminal/TermuxTerminalViewClient;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 696
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 697
    return-void
.end method
