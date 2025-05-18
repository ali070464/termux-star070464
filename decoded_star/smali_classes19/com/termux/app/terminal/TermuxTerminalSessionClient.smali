.class public Lcom/termux/app/terminal/TermuxTerminalSessionClient;
.super Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;
.source "TermuxTerminalSessionClient.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxTerminalSessionClient"

.field private static final MAX_SESSIONS:I = 0x8


# instance fields
.field private final mActivity:Lcom/termux/app/TermuxActivity;

.field private mBellSoundId:I

.field private mBellSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/termux/app/TermuxActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    .line 48
    return-void
.end method

.method private declared-synchronized getBellSoundPool()Landroid/media/SoundPool;
    .locals 4

    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mBellSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x4

    .line 254
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/16 v3, 0xd

    .line 255
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 253
    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mBellSoundPool:Landroid/media/SoundPool;

    .line 257
    iget-object v2, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const v3, 0x7f0f0001

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mBellSoundId:I

    .line 260
    .end local p0    # "this":Lcom/termux/app/terminal/TermuxTerminalSessionClient;
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mBellSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCurrentStoredSession()Lcom/termux/terminal/TerminalSession;
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getCurrentSession()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "sessionHandle":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 394
    return-object v1

    .line 397
    :cond_0
    iget-object v2, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v2

    .line 398
    .local v2, "service":Lcom/termux/app/TermuxService;
    if-nez v2, :cond_1

    return-object v1

    .line 400
    :cond_1
    invoke-virtual {v2, v0}, Lcom/termux/app/TermuxService;->getTerminalSessionForHandle(Ljava/lang/String;)Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$checkAndScrollToSession$1(Landroid/widget/ListView;I)V
    .locals 0
    .param p0, "termuxSessionsListView"    # Landroid/widget/ListView;
    .param p1, "indexOfSession"    # I

    .line 440
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    return-void
.end method

.method private declared-synchronized releaseBellSoundPool()V
    .locals 1

    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mBellSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mBellSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    .end local p0    # "this":Lcom/termux/app/terminal/TermuxTerminalSessionClient;
    :cond_0
    monitor-exit p0

    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addNewSession(ZLjava/lang/String;)V
    .locals 10
    .param p1, "isFailSafe"    # Z
    .param p2, "sessionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isFailSafe",
            "sessionName"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v0

    .line 336
    .local v0, "service":Lcom/termux/app/TermuxService;
    if-nez v0, :cond_0

    return-void

    .line 338
    :cond_0
    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getTermuxSessionsSize()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 339
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1000f1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f100088

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    .line 340
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v8

    .line 345
    .local v8, "currentSession":Lcom/termux/terminal/TerminalSession;
    if-nez v8, :cond_2

    .line 346
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getDefaultWorkingDirectory()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .local v1, "workingDirectory":Ljava/lang/String;
    goto :goto_0

    .line 348
    .end local v1    # "workingDirectory":Ljava/lang/String;
    :cond_2
    invoke-virtual {v8}, Lcom/termux/terminal/TerminalSession;->getCwd()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 351
    .local v9, "workingDirectory":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, v9

    move v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/termux/app/TermuxService;->createTermuxSession(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/termux/shared/shell/TermuxSession;

    move-result-object v1

    .line 352
    .local v1, "newTermuxSession":Lcom/termux/shared/shell/TermuxSession;
    if-nez v1, :cond_3

    return-void

    .line 354
    :cond_3
    invoke-virtual {v1}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v2

    .line 355
    .local v2, "newTerminalSession":Lcom/termux/terminal/TerminalSession;
    invoke-virtual {p0, v2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    .line 357
    iget-object v3, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v3}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 359
    .end local v1    # "newTermuxSession":Lcom/termux/shared/shell/TermuxSession;
    .end local v2    # "newTerminalSession":Lcom/termux/terminal/TerminalSession;
    .end local v8    # "currentSession":Lcom/termux/terminal/TerminalSession;
    .end local v9    # "workingDirectory":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method public checkAndScrollToSession(Lcom/termux/terminal/TerminalSession;)V
    .locals 6
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v0

    .line 431
    .local v0, "service":Lcom/termux/app/TermuxService;
    if-nez v0, :cond_1

    return-void

    .line 433
    :cond_1
    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxService;->getIndexOfSession(Lcom/termux/terminal/TerminalSession;)I

    move-result v1

    .line 434
    .local v1, "indexOfSession":I
    if-gez v1, :cond_2

    return-void

    .line 435
    :cond_2
    iget-object v2, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const v3, 0x7f08018d

    invoke-virtual {v2, v3}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 436
    .local v2, "termuxSessionsListView":Landroid/widget/ListView;
    if-nez v2, :cond_3

    return-void

    .line 438
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 440
    new-instance v3, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalSessionClient$iOXEksdXfXiUQmZp64DadSsUqcg;

    invoke-direct {v3, v2, v1}, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalSessionClient$iOXEksdXfXiUQmZp64DadSsUqcg;-><init>(Landroid/widget/ListView;I)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 441
    return-void
.end method

.method public checkForFontAndColors()V
    .locals 8

    .line 466
    :try_start_0
    sget-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_COLOR_PROPERTIES_FILE:Ljava/io/File;

    .line 467
    .local v0, "colorsFile":Ljava/io/File;
    sget-object v1, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_FONT_FILE:Ljava/io/File;

    .line 469
    .local v1, "fontFile":Ljava/io/File;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 470
    .local v2, "props":Ljava/util/Properties;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 471
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v4

    .line 476
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_1
    sget-object v3, Lcom/termux/terminal/TerminalColors;->COLOR_SCHEME:Lcom/termux/terminal/TerminalColorScheme;

    invoke-virtual {v3, v2}, Lcom/termux/terminal/TerminalColorScheme;->updateWith(Ljava/util/Properties;)V

    .line 477
    iget-object v3, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v3}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v3

    .line 478
    .local v3, "session":Lcom/termux/terminal/TerminalSession;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 479
    invoke-virtual {v3}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v4

    iget-object v4, v4, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalColors;->reset()V

    .line 481
    :cond_1
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->updateBackgroundColor()V

    .line 483
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v4

    goto :goto_2

    :cond_2
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 484
    .local v4, "newTypeface":Landroid/graphics/Typeface;
    :goto_2
    iget-object v5, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v5}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/termux/view/TerminalView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 487
    .end local v0    # "colorsFile":Ljava/io/File;
    .end local v1    # "fontFile":Ljava/io/File;
    .end local v2    # "props":Ljava/util/Properties;
    .end local v3    # "session":Lcom/termux/terminal/TerminalSession;
    .end local v4    # "newTypeface":Landroid/graphics/Typeface;
    goto :goto_3

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TermuxTerminalSessionClient"

    const-string v2, "Error in checkForFontAndColors()"

    invoke-static {v1, v2, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 488
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public getCurrentStoredSessionOrLast()Lcom/termux/terminal/TerminalSession;
    .locals 4

    .line 371
    invoke-direct {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->getCurrentStoredSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 373
    .local v0, "stored":Lcom/termux/terminal/TerminalSession;
    if-eqz v0, :cond_0

    .line 375
    return-object v0

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v1

    .line 379
    .local v1, "service":Lcom/termux/app/TermuxService;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    .line 381
    :cond_1
    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getLastTermuxSession()Lcom/termux/shared/shell/TermuxSession;

    move-result-object v3

    .line 382
    .local v3, "termuxSession":Lcom/termux/shared/shell/TermuxSession;
    if-eqz v3, :cond_2

    .line 383
    invoke-virtual {v3}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v2

    return-object v2

    .line 385
    :cond_2
    return-object v2
.end method

.method public getTerminalCursorStyle()Ljava/lang/Integer;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getTerminalCursorStyle()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$renameSession$0$TermuxTerminalSessionClient(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionToRename"    # Lcom/termux/terminal/TerminalSession;
    .param p2, "text"    # Ljava/lang/String;

    .line 329
    iput-object p2, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    .line 330
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->termuxSessionListNotifyUpdated()V

    .line 331
    return-void
.end method

.method notifyOfSessionChange()V
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->areTerminalSessionChangeToastsDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 293
    .local v0, "session":Lcom/termux/terminal/TerminalSession;
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p0, v0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->toToastTitle(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    .line 295
    .end local v0    # "session":Lcom/termux/terminal/TerminalSession;
    :cond_1
    return-void
.end method

.method public onBell(Lcom/termux/terminal/TerminalSession;)V
    .locals 8
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getBellBehaviour()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 205
    :pswitch_0
    invoke-direct {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->getBellSoundPool()Landroid/media/SoundPool;

    move-result-object v1

    iget v2, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mBellSoundId:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 206
    goto :goto_0

    .line 202
    :pswitch_1
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/shared/terminal/io/BellHandler;->getInstance(Landroid/content/Context;)Lcom/termux/shared/terminal/io/BellHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/shared/terminal/io/BellHandler;->doBell()V

    .line 203
    nop

    .line 211
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onColorsChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 1
    .param p1, "changedSession"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "changedSession"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->updateBackgroundColor()V

    .line 217
    :cond_0
    return-void
.end method

.method public onCopyTextToClipboard(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "session",
            "text"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 181
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    new-instance v1, Landroid/content/ClipData;

    const/4 v2, 0x0

    const-string v3, "text/plain"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/ClipData$Item;

    invoke-direct {v4, p2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v1, v2, v3, v4}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 182
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->checkForFontAndColors()V

    .line 56
    return-void
.end method

.method public onPasteTextFromClipboard(Lcom/termux/terminal/TerminalSession;)V
    .locals 5
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 189
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    .line 190
    .local v1, "clipData":Landroid/content/ClipData;
    if-eqz v1, :cond_1

    .line 191
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2, v3}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 192
    .local v2, "paste":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v3}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v3

    iget-object v3, v3, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    .line 194
    .end local v2    # "paste":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public onReload()V
    .locals 0

    .line 105
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->checkForFontAndColors()V

    .line 106
    return-void
.end method

.method public onResetTerminalSession()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/termux/view/TerminalView;->setTerminalCursorBlinkerState(ZZ)V

    .line 239
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->getBellSoundPool()Landroid/media/SoundPool;

    .line 83
    return-void
.end method

.method public onSessionFinished(Lcom/termux/terminal/TerminalSession;)V
    .locals 8
    .param p1, "finishedSession"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "finishedSession"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v0

    .line 135
    .local v0, "service":Lcom/termux/app/TermuxService;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->wantsToStop()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 141
    :cond_0
    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxService;->getIndexOfSession(Lcom/termux/terminal/TerminalSession;)I

    move-result v1

    .line 146
    .local v1, "index":I
    const/4 v2, 0x0

    .line 147
    .local v2, "isPluginExecutionCommandWithPendingResult":Z
    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxService;->getTermuxSession(I)Lcom/termux/shared/shell/TermuxSession;

    move-result-object v3

    .line 148
    .local v3, "termuxSession":Lcom/termux/shared/shell/TermuxSession;
    if-eqz v3, :cond_1

    .line 149
    invoke-virtual {v3}, Lcom/termux/shared/shell/TermuxSession;->getExecutionCommand()Lcom/termux/shared/models/ExecutionCommand;

    move-result-object v4

    invoke-virtual {v4}, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommandWithPendingResult()Z

    move-result v2

    .line 150
    if-eqz v2, :cond_1

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" session will be force finished automatically since result in pending."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TermuxTerminalSessionClient"

    invoke-static {v5, v4}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_1
    iget-object v4, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v4}, Lcom/termux/app/TermuxActivity;->isVisible()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v4}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v4

    if-eq p1, v4, :cond_2

    .line 157
    if-ltz v1, :cond_2

    .line 158
    iget-object v4, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->toToastTitle(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - exited"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    .line 161
    :cond_2
    iget-object v4, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v4}, Lcom/termux/app/TermuxActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v6, "android.software.leanback"

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 164
    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getTermuxSessionsSize()I

    move-result v4

    if-gt v4, v5, :cond_3

    if-eqz v2, :cond_6

    .line 165
    :cond_3
    invoke-virtual {p0, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_0

    .line 170
    :cond_4
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->getExitStatus()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->getExitStatus()I

    move-result v4

    const/16 v5, 0x82

    if-eq v4, v5, :cond_5

    if-eqz v2, :cond_6

    .line 171
    :cond_5
    invoke-virtual {p0, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    .line 174
    :cond_6
    :goto_0
    return-void

    .line 137
    .end local v1    # "index":I
    .end local v2    # "isPluginExecutionCommandWithPendingResult":Z
    .end local v3    # "termuxSession":Lcom/termux/shared/shell/TermuxSession;
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->finishActivityIfNotFinishing()V

    .line 138
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->getCurrentStoredSessionOrLast()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    .line 67
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->termuxSessionListNotifyUpdated()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->onScreenUpdated()V

    .line 73
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentStoredSession()V

    .line 97
    invoke-direct {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->releaseBellSoundPool()V

    .line 98
    return-void
.end method

.method public onTerminalCursorStateChange(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 222
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    const-string v0, "TermuxTerminalSessionClient"

    const-string v1, "Ignoring call to start cursor blinking since activity is not visible"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/termux/view/TerminalView;->setTerminalCursorBlinkerState(ZZ)V

    .line 230
    return-void
.end method

.method public onTextChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 1
    .param p1, "changedSession"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "changedSession"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->onScreenUpdated()V

    .line 115
    :cond_1
    return-void
.end method

.method public onTitleChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 3
    .param p1, "updatedSession"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updatedSession"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p0, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->toToastTitle(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->termuxSessionListNotifyUpdated()V

    .line 129
    return-void
.end method

.method public removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V
    .locals 5
    .param p1, "finishedSession"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finishedSession"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v0

    .line 406
    .local v0, "service":Lcom/termux/app/TermuxService;
    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxService;->removeTermuxSession(Lcom/termux/terminal/TerminalSession;)I

    move-result v1

    .line 410
    .local v1, "index":I
    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getTermuxSessionsSize()I

    move-result v2

    .line 411
    .local v2, "size":I
    if-nez v2, :cond_1

    .line 413
    iget-object v3, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v3}, Lcom/termux/app/TermuxActivity;->finishActivityIfNotFinishing()V

    goto :goto_0

    .line 415
    :cond_1
    if-lt v1, v2, :cond_2

    .line 416
    add-int/lit8 v1, v2, -0x1

    .line 418
    :cond_2
    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxService;->getTermuxSession(I)Lcom/termux/shared/shell/TermuxSession;

    move-result-object v3

    .line 419
    .local v3, "termuxSession":Lcom/termux/shared/shell/TermuxSession;
    if-eqz v3, :cond_3

    .line 420
    invoke-virtual {v3}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    .line 422
    .end local v3    # "termuxSession":Lcom/termux/shared/shell/TermuxSession;
    :cond_3
    :goto_0
    return-void
.end method

.method public renameSession(Lcom/termux/terminal/TerminalSession;)V
    .locals 10
    .param p1, "sessionToRename"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sessionToRename"
        }
    .end annotation

    .line 326
    if-nez p1, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const v1, 0x7f1000f3

    iget-object v2, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    const v3, 0x7f10002a

    new-instance v4, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalSessionClient$mqPEUBRJLdwM2XHQFtq4MFnL0W0;

    invoke-direct {v4, p0, p1}, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalSessionClient$mqPEUBRJLdwM2XHQFtq4MFnL0W0;-><init>(Lcom/termux/app/terminal/TermuxTerminalSessionClient;Lcom/termux/terminal/TerminalSession;)V

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/termux/shared/interact/TextInputDialogUtils;->textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;ILcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;ILcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 332
    return-void
.end method

.method public setCurrentSession(Lcom/termux/terminal/TerminalSession;)V
    .locals 1
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 275
    if-nez p1, :cond_0

    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->attachSession(Lcom/termux/terminal/TerminalSession;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->notifyOfSessionChange()V

    .line 284
    :cond_1
    invoke-virtual {p0, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->checkAndScrollToSession(Lcom/termux/terminal/TerminalSession;)V

    .line 285
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->updateBackgroundColor()V

    .line 286
    return-void
.end method

.method public setCurrentStoredSession()V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 363
    .local v0, "currentSession":Lcom/termux/terminal/TerminalSession;
    if-eqz v0, :cond_0

    .line 364
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v1

    iget-object v2, v0, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setCurrentSession(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setCurrentSession(Ljava/lang/String;)V

    .line 367
    :goto_0
    return-void
.end method

.method public switchToSession(I)V
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v0

    .line 317
    .local v0, "service":Lcom/termux/app/TermuxService;
    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxService;->getTermuxSession(I)Lcom/termux/shared/shell/TermuxSession;

    move-result-object v1

    .line 320
    .local v1, "termuxSession":Lcom/termux/shared/shell/TermuxSession;
    if-eqz v1, :cond_1

    .line 321
    invoke-virtual {v1}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    .line 322
    :cond_1
    return-void
.end method

.method public switchToSession(Z)V
    .locals 6
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forward"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v0

    .line 299
    .local v0, "service":Lcom/termux/app/TermuxService;
    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    .line 302
    .local v1, "currentTerminalSession":Lcom/termux/terminal/TerminalSession;
    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxService;->getIndexOfSession(Lcom/termux/terminal/TerminalSession;)I

    move-result v2

    .line 303
    .local v2, "index":I
    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getTermuxSessionsSize()I

    move-result v3

    .line 304
    .local v3, "size":I
    if-eqz p1, :cond_1

    .line 305
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 307
    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_2

    add-int/lit8 v2, v3, -0x1

    .line 310
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Lcom/termux/app/TermuxService;->getTermuxSession(I)Lcom/termux/shared/shell/TermuxSession;

    move-result-object v4

    .line 311
    .local v4, "termuxSession":Lcom/termux/shared/shell/TermuxSession;
    if-eqz v4, :cond_3

    .line 312
    invoke-virtual {v4}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    .line 313
    :cond_3
    return-void
.end method

.method public termuxSessionListNotifyUpdated()V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->termuxSessionListNotifyUpdated()V

    .line 426
    return-void
.end method

.method toToastTitle(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;
    .locals 6
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v0

    .line 446
    .local v0, "service":Lcom/termux/app/TermuxService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 448
    :cond_0
    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxService;->getIndexOfSession(Lcom/termux/terminal/TerminalSession;)I

    move-result v2

    .line 449
    .local v2, "indexOfSession":I
    if-gez v2, :cond_1

    return-object v1

    .line 450
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    .local v1, "toastTitle":Ljava/lang/StringBuilder;
    iget-object v3, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, " "

    if-nez v3, :cond_2

    .line 452
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :cond_2
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, "title":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 457
    iget-object v5, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const-string v4, "\n"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public updateBackgroundColor()V
    .locals 4

    .line 491
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 493
    .local v0, "session":Lcom/termux/terminal/TerminalSession;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 494
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v2

    iget-object v2, v2, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v2, v2, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    const/16 v3, 0x101

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 496
    :cond_1
    return-void
.end method
