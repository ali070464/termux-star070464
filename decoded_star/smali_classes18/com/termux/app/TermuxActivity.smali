.class public final Lcom/termux/app/TermuxActivity;
.super Landroid/app/Activity;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ARG_TERMINAL_TOOLBAR_TEXT_INPUT:Ljava/lang/String; = "terminal_toolbar_text_input"

.field private static final CONTEXT_MENU_AUTOFILL_ID:I = 0x2

.field private static final CONTEXT_MENU_HELP_ID:I = 0x7

.field private static final CONTEXT_MENU_KILL_PROCESS_ID:I = 0x4

.field private static final CONTEXT_MENU_REPORT_ID:I = 0x9

.field private static final CONTEXT_MENU_RESET_TERMINAL_ID:I = 0x3

.field private static final CONTEXT_MENU_SELECT_URL_ID:I = 0x0

.field private static final CONTEXT_MENU_SETTINGS_ID:I = 0x8

.field private static final CONTEXT_MENU_SHARE_TRANSCRIPT_ID:I = 0x1

.field private static final CONTEXT_MENU_STYLING_ID:I = 0x5

.field private static final CONTEXT_MENU_TOGGLE_KEEP_SCREEN_ON:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "TermuxActivity"


# instance fields
.field private isOnResumeAfterOnCreate:Z

.field mExtraKeysView:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

.field private mIsInvalidState:Z

.field private mIsVisible:Z

.field mLastToast:Landroid/widget/Toast;

.field private mNavBarHeight:I

.field private mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

.field private mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

.field private mTerminalToolbarDefaultHeight:I

.field mTerminalView:Lcom/termux/view/TerminalView;

.field mTermuxActivityBottomSpaceView:Landroid/view/View;

.field private final mTermuxActivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mTermuxActivityRootView:Lcom/termux/app/terminal/TermuxActivityRootView;

.field mTermuxService:Lcom/termux/app/TermuxService;

.field mTermuxSessionListViewController:Lcom/termux/app/terminal/TermuxSessionsListViewController;

.field mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

.field mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 135
    new-instance v0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;-><init>(Lcom/termux/app/TermuxActivity;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->isOnResumeAfterOnCreate:Z

    return-void
.end method

.method static synthetic access$000(Lcom/termux/app/TermuxActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/TermuxActivity;

    .line 76
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    return v0
.end method

.method static synthetic access$100(Lcom/termux/app/TermuxActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/TermuxActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 76
    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->fixTermuxActivityBroadcastReceieverIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/termux/app/TermuxActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/TermuxActivity;

    .line 76
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->reloadActivityStyling()V

    return-void
.end method

.method private fixTermuxActivityBroadcastReceieverIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 845
    if-nez p1, :cond_0

    return-void

    .line 847
    :cond_0
    const-string v0, "com.termux.app.reload_style"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 848
    .local v1, "extraReloadStyle":Ljava/lang/String;
    const-string v2, "storage"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 849
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 850
    const-string v0, "com.termux.app.request_storage_permissions"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    :cond_1
    return-void
.end method

.method static synthetic lambda$showKillSessionDialog$9(Lcom/termux/terminal/TerminalSession;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "session"    # Lcom/termux/terminal/TerminalSession;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 664
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 665
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalSession;->finishIfRunning()V

    .line 666
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 916
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/app/TermuxActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 917
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 918
    return-object v0
.end method

.method private onResetTerminalSession(Lcom/termux/terminal/TerminalSession;)V
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

    .line 672
    if-eqz p1, :cond_0

    .line 673
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->reset()V

    .line 674
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    .line 676
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->onResetTerminalSession()V

    .line 679
    :cond_0
    return-void
.end method

.method private registerTermuxActivityBroadcastReceiver()V
    .locals 2

    .line 833
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 834
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.termux.app.request_storage_permissions"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 835
    const-string v1, "com.termux.app.reload_style"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 837
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/termux/app/TermuxActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 838
    return-void
.end method

.method private reloadActivityStyling()V
    .locals 2

    .line 879
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    if-eqz v0, :cond_0

    .line 880
    invoke-virtual {v0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->loadTermuxPropertiesFromDisk()V

    .line 882
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

    if-eqz v0, :cond_0

    .line 883
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v1}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->shouldExtraKeysTextBeAllCaps()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->setButtonTextAllCaps(Z)V

    .line 884
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v1}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getExtraKeysInfo()Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->reload(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;)V

    .line 888
    :cond_0
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setMargins()V

    .line 889
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setTerminalToolbarHeight()V

    .line 891
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    if-eqz v0, :cond_1

    .line 892
    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->onReload()V

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    if-eqz v0, :cond_2

    .line 895
    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->onReload()V

    .line 897
    :cond_2
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    if-eqz v0, :cond_3

    .line 898
    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->setTerminalTranscriptRows()V

    .line 907
    :cond_3
    return-void
.end method

.method private requestAutoFill()V
    .locals 2

    .line 704
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 705
    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 706
    .local v0, "autofillManager":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->requestAutofill(Landroid/view/View;)V

    .line 710
    .end local v0    # "autofillManager":Landroid/view/autofill/AutofillManager;
    :cond_0
    return-void
.end method

.method private saveTerminalToolbarTextInput(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 511
    if-nez p1, :cond_0

    return-void

    .line 513
    :cond_0
    const v0, 0x7f08018f

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 514
    .local v0, "textInputView":Landroid/widget/EditText;
    if-eqz v0, :cond_1

    .line 515
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, "textInput":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "terminal_toolbar_text_input"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    .end local v1    # "textInput":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setActivityTheme()V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->isUsingBlackUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const v0, 0x7f1101f6

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->setTheme(I)V

    goto :goto_0

    .line 411
    :cond_0
    const v0, 0x7f1101f5

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->setTheme(I)V

    .line 413
    :goto_0
    return-void
.end method

.method private setDrawerTheme()V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->isUsingBlackUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x106000e

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 419
    const v0, 0x7f08015c

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 421
    :cond_0
    return-void
.end method

.method private setMargins()V
    .locals 3

    .line 424
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 425
    .local v0, "relativeLayout":Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v1}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getTerminalMarginHorizontal()I

    move-result v1

    .line 426
    .local v1, "marginHorizontal":I
    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v2}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getTerminalMarginVertical()I

    move-result v2

    .line 427
    .local v2, "marginVertical":I
    invoke-static {v0, v1, v2, v1, v2}, Lcom/termux/shared/view/ViewUtils;->setLayoutMarginsInDp(Landroid/view/View;IIII)V

    .line 428
    return-void
.end method

.method private setNewSessionButtonView()V
    .locals 2

    .line 530
    const v0, 0x7f08011a

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 531
    .local v0, "newSessionButton":Landroid/view/View;
    new-instance v1, Lcom/termux/app/-$$Lambda$TermuxActivity$schtpTjMV9QlHtO4XlTOrTsUM7M;

    invoke-direct {v1, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$schtpTjMV9QlHtO4XlTOrTsUM7M;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    new-instance v1, Lcom/termux/app/-$$Lambda$TermuxActivity$AiMHAK_-yz97LoGyaRLTYFG_A8U;

    invoke-direct {v1, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$AiMHAK_-yz97LoGyaRLTYFG_A8U;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 539
    return-void
.end method

.method private setSettingsButtonView()V
    .locals 2

    .line 523
    const v0, 0x7f08015c

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 524
    .local v0, "settingsButton":Landroid/widget/ImageButton;
    new-instance v1, Lcom/termux/app/-$$Lambda$TermuxActivity$F_s74DJTj5Xgzs9mYOYZfwC1C1s;

    invoke-direct {v1, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$F_s74DJTj5Xgzs9mYOYZfwC1C1s;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    return-void
.end method

.method private setTerminalToolbarHeight()V
    .locals 4

    .line 487
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    .line 488
    .local v0, "terminalToolbarViewPager":Landroidx/viewpager/widget/ViewPager;
    if-nez v0, :cond_0

    return-void

    .line 490
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 491
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/termux/app/TermuxActivity;->mTerminalToolbarDefaultHeight:I

    .line 492
    iget-object v3, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v3}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getExtraKeysInfo()Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v3}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getExtraKeysInfo()Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;->getMatrix()[[Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    move-result-object v3

    array-length v3, v3

    :goto_0
    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    .line 493
    invoke-virtual {v3}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getTerminalToolbarHeightScaleFactor()F

    move-result v3

    mul-float/2addr v2, v3

    .line 491
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 494
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    return-void
.end method

.method private setTerminalToolbarView(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 470
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    .line 471
    .local v0, "terminalToolbarViewPager":Landroidx/viewpager/widget/ViewPager;
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->shouldShowTerminalToolbar()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 473
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 474
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcom/termux/app/TermuxActivity;->mTerminalToolbarDefaultHeight:I

    .line 476
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setTerminalToolbarHeight()V

    .line 478
    const/4 v2, 0x0

    .line 479
    .local v2, "savedTextInput":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 480
    const-string v3, "terminal_toolbar_text_input"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 482
    :cond_1
    new-instance v3, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;

    invoke-direct {v3, p0, v2}, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;-><init>(Lcom/termux/app/TermuxActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 483
    new-instance v3, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;

    invoke-direct {v3, p0, v0}, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;-><init>(Lcom/termux/app/TermuxActivity;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 484
    return-void
.end method

.method private setTermuxSessionsListView()V
    .locals 3

    .line 460
    const v0, 0x7f08018d

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 461
    .local v0, "termuxSessionsListView":Landroid/widget/ListView;
    new-instance v1, Lcom/termux/app/terminal/TermuxSessionsListViewController;

    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    invoke-virtual {v2}, Lcom/termux/app/TermuxService;->getTermuxSessions()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/termux/app/terminal/TermuxSessionsListViewController;-><init>(Lcom/termux/app/TermuxActivity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxSessionListViewController:Lcom/termux/app/terminal/TermuxSessionsListViewController;

    .line 462
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 463
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxSessionListViewController:Lcom/termux/app/terminal/TermuxSessionsListViewController;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 464
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxSessionListViewController:Lcom/termux/app/terminal/TermuxSessionsListViewController;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 465
    return-void
.end method

.method private setTermuxTerminalViewAndClients()V
    .locals 2

    .line 445
    new-instance v0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-direct {v0, p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;-><init>(Lcom/termux/app/TermuxActivity;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    .line 446
    new-instance v0, Lcom/termux/app/terminal/TermuxTerminalViewClient;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-direct {v0, p0, v1}, Lcom/termux/app/terminal/TermuxTerminalViewClient;-><init>(Lcom/termux/app/TermuxActivity;Lcom/termux/app/terminal/TermuxTerminalSessionClient;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    .line 449
    const v0, 0x7f080191

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/termux/view/TerminalView;

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    .line 450
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->setTerminalViewClient(Lcom/termux/view/TerminalViewClient;)V

    .line 452
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->onCreate()V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->onCreate()V

    .line 457
    :cond_1
    return-void
.end method

.method private setToggleKeyboardView()V
    .locals 3

    .line 542
    const v0, 0x7f0801b2

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/termux/app/-$$Lambda$TermuxActivity$63fmUM3bXn7gOQbpprTTtUPbMkc;

    invoke-direct {v2, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$63fmUM3bXn7gOQbpprTTtUPbMkc;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/termux/app/-$$Lambda$TermuxActivity$JlkEIWKzhQw9nM36yrdYxsW0chg;

    invoke-direct {v1, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$JlkEIWKzhQw9nM36yrdYxsW0chg;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 551
    return-void
.end method

.method private showKillSessionDialog(Lcom/termux/terminal/TerminalSession;)V
    .locals 3
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 658
    if-nez p1, :cond_0

    return-void

    .line 660
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 661
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 662
    const v1, 0x7f1000ee

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 663
    const v1, 0x1040013

    new-instance v2, Lcom/termux/app/-$$Lambda$TermuxActivity$qdYLq_g9hmw-YQf9CQfie5WvXW0;

    invoke-direct {v2, p1}, Lcom/termux/app/-$$Lambda$TermuxActivity$qdYLq_g9hmw-YQf9CQfie5WvXW0;-><init>(Lcom/termux/terminal/TerminalSession;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 667
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 668
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 669
    return-void
.end method

.method private showStylingDialog()V
    .locals 5

    .line 682
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 683
    .local v0, "stylingIntent":Landroid/content/Intent;
    const-string v1, "com.termux.styling"

    const-string v2, "com.termux.styling.TermuxStyleActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    goto :goto_1

    .line 686
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 689
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f10005a

    invoke-virtual {p0, v3}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f100032

    new-instance v4, Lcom/termux/app/-$$Lambda$TermuxActivity$0xJHssyQo8OkdU9uKYYf1ScOJrg;

    invoke-direct {v4, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$0xJHssyQo8OkdU9uKYYf1ScOJrg;-><init>(Lcom/termux/app/TermuxActivity;)V

    .line 690
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 692
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void
.end method

.method public static startTermuxActivity(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 912
    invoke-static {p0}, Lcom/termux/app/TermuxActivity;->newInstance(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 913
    return-void
.end method

.method private toggleKeepScreenOn()V
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->setKeepScreenOn(Z)V

    .line 696
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v0, v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->setKeepScreenOn(Z)V

    .line 699
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v0, v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setKeepScreenOn(Z)V

    .line 701
    :goto_0
    return-void
.end method

.method private unregisterTermuxActivityBroadcastReceiever()V
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 842
    return-void
.end method

.method public static updateTermuxActivityStyling(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 828
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.termux.app.reload_style"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 829
    .local v0, "stylingIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 830
    return-void
.end method


# virtual methods
.method public addTermuxActivityRootViewGlobalLayoutListener()V
    .locals 2

    .line 433
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTermuxActivityRootView()Lcom/termux/app/terminal/TermuxActivityRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxActivityRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTermuxActivityRootView()Lcom/termux/app/terminal/TermuxActivityRootView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 434
    return-void
.end method

.method public ensureStoragePermissionGranted()Z
    .locals 3

    .line 718
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/termux/shared/packages/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    const/4 v0, 0x1

    return v0

    .line 721
    :cond_0
    const-string v1, "TermuxActivity"

    const-string v2, "Storage permission not granted, requesting permission."

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/termux/shared/packages/PermissionUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 723
    const/4 v0, 0x0

    return v0
.end method

.method public finishActivityIfNotFinishing()V
    .locals 1

    .line 569
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finish()V

    .line 572
    :cond_0
    return-void
.end method

.method public getCurrentSession()Lcom/termux/terminal/TerminalSession;
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    return-object v0

    .line 812
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 1

    .line 760
    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    return-object v0
.end method

.method public getExtraKeysView()Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

    return-object v0
.end method

.method public getNavBarHeight()I
    .locals 1

    .line 740
    iget v0, p0, Lcom/termux/app/TermuxActivity;->mNavBarHeight:I

    return v0
.end method

.method public getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    return-object v0
.end method

.method public getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    return-object v0
.end method

.method public getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 765
    const v0, 0x7f080190

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method public getTerminalView()Lcom/termux/view/TerminalView;
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    return-object v0
.end method

.method public getTermuxActivityBottomSpaceView()Landroid/view/View;
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityBottomSpaceView:Landroid/view/View;

    return-object v0
.end method

.method public getTermuxActivityRootView()Lcom/termux/app/terminal/TermuxActivityRootView;
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityRootView:Lcom/termux/app/terminal/TermuxActivityRootView;

    return-object v0
.end method

.method public getTermuxService()Lcom/termux/app/TermuxService;
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    return-object v0
.end method

.method public getTermuxTerminalSessionClient()Lcom/termux/app/terminal/TermuxTerminalSessionClient;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    return-object v0
.end method

.method public getTermuxTerminalViewClient()Lcom/termux/app/terminal/TermuxTerminalViewClient;
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    return-object v0
.end method

.method public isOnResumeAfterOnCreate()Z
    .locals 1

    .line 786
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->isOnResumeAfterOnCreate:Z

    return v0
.end method

.method public isTerminalToolbarTextInputViewSelected()Z
    .locals 2

    .line 773
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTerminalViewSelected()Z
    .locals 1

    .line 769
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 782
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    return v0
.end method

.method public synthetic lambda$onCreate$0$TermuxActivity(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 218
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/termux/app/TermuxActivity;->mNavBarHeight:I

    .line 219
    return-object p2
.end method

.method public synthetic lambda$onServiceConnected$1$TermuxActivity()V
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    if-nez v0, :cond_0

    return-void

    .line 365
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 366
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 367
    .local v1, "launchFailsafe":Z
    if-eqz v0, :cond_1

    .line 368
    const-string v2, "com.termux.app.failsafe_session"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move v1, v2

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->addNewSession(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "launchFailsafe":Z
    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 374
    :goto_0
    return-void
.end method

.method public synthetic lambda$setNewSessionButtonView$3$TermuxActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 531
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->addNewSession(ZLjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setNewSessionButtonView$4$TermuxActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 534
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->addNewSession(ZLjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setNewSessionButtonView$5$TermuxActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 535
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->addNewSession(ZLjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setNewSessionButtonView$6$TermuxActivity(Landroid/view/View;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 533
    new-instance v4, Lcom/termux/app/-$$Lambda$TermuxActivity$siTi5_1JUnXP2tjnwmSeb6E43sw;

    invoke-direct {v4, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$siTi5_1JUnXP2tjnwmSeb6E43sw;-><init>(Lcom/termux/app/TermuxActivity;)V

    new-instance v6, Lcom/termux/app/-$$Lambda$TermuxActivity$RyBmlNGE1iQUklgNk-8U6lv3j8k;

    invoke-direct {v6, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$RyBmlNGE1iQUklgNk-8U6lv3j8k;-><init>(Lcom/termux/app/TermuxActivity;)V

    const v1, 0x7f1000ef

    const/4 v2, 0x0

    const v3, 0x7f10001f

    const v5, 0x7f100026

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/termux/shared/interact/TextInputDialogUtils;->textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;ILcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;ILcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 537
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$setSettingsButtonView$2$TermuxActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 525
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/app/activities/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V

    .line 526
    return-void
.end method

.method public synthetic lambda$setToggleKeyboardView$7$TermuxActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 543
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->onToggleSoftKeyboardRequest()V

    .line 544
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 545
    return-void
.end method

.method public synthetic lambda$setToggleKeyboardView$8$TermuxActivity(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 548
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->toggleTerminalToolbar()V

    .line 549
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$showStylingDialog$10$TermuxActivity(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 690
    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://f-droid.org/en/packages/com.termux.styling"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 560
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finishActivityIfNotFinishing()V

    .line 565
    :goto_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 619
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 621
    .local v0, "session":Lcom/termux/terminal/TerminalSession;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 653
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 650
    :pswitch_0
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v1}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->reportIssueFromTranscript()V

    .line 651
    return v2

    .line 647
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/termux/app/activities/SettingsActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V

    .line 648
    return v2

    .line 644
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/termux/app/activities/HelpActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V

    .line 645
    return v2

    .line 641
    :pswitch_3
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->toggleKeepScreenOn()V

    .line 642
    return v2

    .line 638
    :pswitch_4
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->showStylingDialog()V

    .line 639
    return v2

    .line 635
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/termux/app/TermuxActivity;->showKillSessionDialog(Lcom/termux/terminal/TerminalSession;)V

    .line 636
    return v2

    .line 632
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/termux/app/TermuxActivity;->onResetTerminalSession(Lcom/termux/terminal/TerminalSession;)V

    .line 633
    return v2

    .line 629
    :pswitch_7
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->requestAutoFill()V

    .line 630
    return v2

    .line 626
    :pswitch_8
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v1}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->shareSessionTranscript()V

    .line 627
    return v2

    .line 623
    :pswitch_9
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v1}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->showUrlSelection()V

    .line 624
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 181
    const-string v0, "TermuxActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/termux/app/TermuxActivity;->isOnResumeAfterOnCreate:Z

    .line 186
    invoke-static {p0, v0}, Lcom/termux/app/utils/CrashUtils;->notifyAppCrashOnLastRun(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    const/16 v0, 0xe

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/termux/shared/activities/ReportActivity;->deleteReportInfoFilesOlderThanXDays(Landroid/content/Context;IZ)Lcom/termux/shared/models/errors/Error;

    .line 192
    new-instance v0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    invoke-direct {v0, p0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    .line 194
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setActivityTheme()V

    .line 196
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 198
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->setContentView(I)V

    .line 202
    invoke-static {p0, v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    .line 203
    if-nez v0, :cond_0

    .line 205
    iput-boolean v1, p0, Lcom/termux/app/TermuxActivity;->mIsInvalidState:Z

    .line 206
    return-void

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setMargins()V

    .line 211
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/termux/app/terminal/TermuxActivityRootView;

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityRootView:Lcom/termux/app/terminal/TermuxActivityRootView;

    .line 212
    invoke-virtual {v0, p0}, Lcom/termux/app/terminal/TermuxActivityRootView;->setActivity(Lcom/termux/app/TermuxActivity;)V

    .line 213
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityBottomSpaceView:Landroid/view/View;

    .line 214
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityRootView:Lcom/termux/app/terminal/TermuxActivityRootView;

    new-instance v1, Lcom/termux/app/terminal/TermuxActivityRootView$WindowInsetsListener;

    invoke-direct {v1}, Lcom/termux/app/terminal/TermuxActivityRootView$WindowInsetsListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/TermuxActivityRootView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 216
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 217
    .local v0, "content":Landroid/view/View;
    new-instance v1, Lcom/termux/app/-$$Lambda$TermuxActivity$R86CrS-vWQv2w37F0KxXs9_9934;

    invoke-direct {v1, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$R86CrS-vWQv2w37F0KxXs9_9934;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 222
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v1}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->isUsingFullScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setDrawerTheme()V

    .line 228
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setTermuxTerminalViewAndClients()V

    .line 230
    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->setTerminalToolbarView(Landroid/os/Bundle;)V

    .line 232
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setSettingsButtonView()V

    .line 234
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setNewSessionButtonView()V

    .line 236
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setToggleKeyboardView()V

    .line 238
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p0, v1}, Lcom/termux/app/TermuxActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 241
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/termux/app/TermuxService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v1, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/termux/app/TermuxActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 246
    invoke-virtual {p0, v1, p0, v2}, Lcom/termux/app/TermuxActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->sendTermuxOpenedBroadcast(Landroid/content/Context;)V

    .line 252
    return-void

    .line 247
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bindService() failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "menu",
            "v",
            "menuInfo"
        }
    .end annotation

    .line 587
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 588
    .local v0, "currentSession":Lcom/termux/terminal/TerminalSession;
    if-nez v0, :cond_0

    return-void

    .line 590
    :cond_0
    const/4 v1, 0x0

    .line 591
    .local v1, "addAutoFillMenu":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 592
    const-class v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v2}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillManager;

    .line 593
    .local v2, "autofillManager":Landroid/view/autofill/AutofillManager;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 594
    const/4 v1, 0x1

    .line 598
    .end local v2    # "autofillManager":Landroid/view/autofill/AutofillManager;
    :cond_1
    const v2, 0x7f10002e

    const/4 v3, 0x0

    invoke-interface {p1, v3, v3, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 599
    const v2, 0x7f100030

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 600
    if-eqz v1, :cond_2

    const/4 v2, 0x2

    const v5, 0x7f10001c

    invoke-interface {p1, v3, v2, v3, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 601
    :cond_2
    const/4 v2, 0x3

    const v5, 0x7f10002c

    invoke-interface {p1, v3, v2, v3, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 602
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100024

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v8

    invoke-virtual {v8}, Lcom/termux/terminal/TerminalSession;->getPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v2, v3, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 603
    const/4 v2, 0x5

    const v5, 0x7f100031

    invoke-interface {p1, v3, v2, v3, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 604
    const/4 v2, 0x6

    const v5, 0x7f100033

    invoke-interface {p1, v3, v2, v3, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v4, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v4}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->shouldKeepScreenOn()Z

    move-result v4

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 605
    const/4 v2, 0x7

    const v4, 0x7f100028

    invoke-interface {p1, v3, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 606
    const/16 v2, 0x8

    const v4, 0x7f100029

    invoke-interface {p1, v3, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 607
    const/16 v2, 0x9

    const v4, 0x7f10002b

    invoke-interface {p1, v3, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 608
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    .line 614
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 319
    const-string v0, "TermuxActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsInvalidState:Z

    if-eqz v0, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->unsetTermuxTerminalSessionClient()V

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    .line 330
    :cond_1
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/termux/app/TermuxActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 334
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 729
    const-string v0, "TermuxActivity"

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget v1, p3, v1

    if-nez v1, :cond_0

    .line 730
    const-string v1, "Storage permission granted by user on request."

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-static {p0}, Lcom/termux/app/TermuxInstaller;->setupStorageSymlinks(Landroid/content/Context;)V

    goto :goto_0

    .line 733
    :cond_0
    const-string v1, "Storage permission denied by user on request."

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 278
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 280
    const-string v0, "TermuxActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsInvalidState:Z

    if-eqz v0, :cond_0

    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->onResume()V

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->onResume()V

    .line 290
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->isOnResumeAfterOnCreate:Z

    .line 291
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 338
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 339
    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->saveTerminalToolbarTextInput(Landroid/os/Bundle;)V

    .line 340
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "componentName",
            "service"
        }
    .end annotation

    .line 354
    const-string v0, "TermuxActivity"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    move-object v0, p2

    check-cast v0, Lcom/termux/app/TermuxService$LocalBinder;

    iget-object v0, v0, Lcom/termux/app/TermuxService$LocalBinder;->service:Lcom/termux/app/TermuxService;

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    .line 358
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setTermuxSessionsListView()V

    .line 360
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->isTermuxSessionsEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Lcom/termux/app/-$$Lambda$TermuxActivity$iAb3wbvCSw3C33cvEKUeEppeGmE;

    invoke-direct {v0, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$iAb3wbvCSw3C33cvEKUeEppeGmE;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-static {p0, v0}, Lcom/termux/app/TermuxInstaller;->setupBootstrapIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finishActivityIfNotFinishing()V

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 381
    .local v0, "i":Landroid/content/Intent;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.RUN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    const/4 v1, 0x0

    const-string v2, "com.termux.app.failsafe_session"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 384
    .local v1, "isFailSafe":Z
    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->addNewSession(ZLjava/lang/String;)V

    .line 385
    .end local v1    # "isFailSafe":Z
    goto :goto_0

    .line 386
    :cond_2
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {v1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->getCurrentStoredSessionOrLast()Lcom/termux/terminal/TerminalSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    .line 391
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxService;->setTermuxTerminalSessionClient(Lcom/termux/app/terminal/TermuxTerminalSessionClient;)V

    .line 392
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 397
    const-string v0, "TermuxActivity"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finishActivityIfNotFinishing()V

    .line 401
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 258
    const-string v0, "TermuxActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsInvalidState:Z

    if-eqz v0, :cond_0

    return-void

    .line 262
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    .line 264
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->onStart()V

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    if-eqz v0, :cond_2

    .line 268
    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->onStart()V

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->isTerminalMarginAdjustmentEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->addTermuxActivityRootViewGlobalLayoutListener()V

    .line 273
    :cond_3
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->registerTermuxActivityBroadcastReceiver()V

    .line 274
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 297
    const-string v0, "TermuxActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsInvalidState:Z

    if-eqz v0, :cond_0

    return-void

    .line 301
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    .line 303
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->onStop()V

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->onStop()V

    .line 309
    :cond_2
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->removeTermuxActivityRootViewGlobalLayoutListener()V

    .line 311
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->unregisterTermuxActivityBroadcastReceiever()V

    .line 312
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 313
    return-void
.end method

.method public removeTermuxActivityRootViewGlobalLayoutListener()V
    .locals 2

    .line 437
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTermuxActivityRootView()Lcom/termux/app/terminal/TermuxActivityRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTermuxActivityRootView()Lcom/termux/app/terminal/TermuxActivityRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxActivityRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTermuxActivityRootView()Lcom/termux/app/terminal/TermuxActivityRootView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 439
    :cond_0
    return-void
.end method

.method public setExtraKeysView(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;)V
    .locals 0
    .param p1, "extraKeysView"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraKeysView"
        }
    .end annotation

    .line 756
    iput-object p1, p0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

    .line 757
    return-void
.end method

.method public showToast(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "longDuration"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "longDuration"
        }
    .end annotation

    .line 576
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mLastToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 578
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mLastToast:Landroid/widget/Toast;

    .line 579
    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 580
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 581
    return-void

    .line 576
    :cond_2
    :goto_0
    return-void
.end method

.method public termuxSessionListNotifyUpdated()V
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxSessionListViewController:Lcom/termux/app/terminal/TermuxSessionsListViewController;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxSessionsListViewController;->notifyDataSetChanged()V

    .line 779
    return-void
.end method

.method public toggleTerminalToolbar()V
    .locals 4

    .line 498
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    .line 499
    .local v0, "terminalToolbarViewPager":Landroidx/viewpager/widget/ViewPager;
    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->toogleShowTerminalToolbar()Z

    move-result v1

    .line 502
    .local v1, "showNow":Z
    if-eqz v1, :cond_1

    const v2, 0x7f100085

    goto :goto_0

    :cond_1
    const v2, 0x7f100083

    :goto_0
    invoke-virtual {p0, v2}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 503
    if-eqz v1, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 504
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->isTerminalToolbarTextInputViewSelected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 506
    const v2, 0x7f08018f

    invoke-virtual {p0, v2}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 508
    :cond_3
    return-void
.end method
