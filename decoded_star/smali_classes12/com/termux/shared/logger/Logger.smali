.class public Lcom/termux/shared/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static CURRENT_LOG_LEVEL:I = 0x0

.field public static final DEFAULT_LOG_LEVEL:I = 0x1

.field public static final DEFAULT_LOG_TAG:Ljava/lang/String; = "Termux"

.field public static final LOGGER_ENTRY_MAX_PAYLOAD:I = 0xfe4

.field public static final LOGGER_ENTRY_MAX_SAFE_PAYLOAD:I = 0xfa0

.field public static final LOG_LEVEL_DEBUG:I = 0x2

.field public static final LOG_LEVEL_NORMAL:I = 0x1

.field public static final LOG_LEVEL_OFF:I = 0x0

.field public static final LOG_LEVEL_VERBOSE:I = 0x3

.field public static final MAX_LOG_LEVEL:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFullTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 429
    const-string v0, "Termux"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    return-object p0

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Termux:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogLevel()I
    .locals 1

    .line 413
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    return v0
.end method

.method public static getLogLevelLabel(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logLevel"    # I
    .param p2, "addDefaultTag"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "logLevel",
            "addDefaultTag"
        }
    .end annotation

    .line 396
    packed-switch p1, :pswitch_data_0

    .line 401
    sget v0, Lcom/termux/shared/R$string;->log_level_unknown:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "logLabel":Ljava/lang/String;
    goto :goto_0

    .line 400
    .end local v0    # "logLabel":Ljava/lang/String;
    :pswitch_0
    sget v0, Lcom/termux/shared/R$string;->log_level_verbose:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "logLabel":Ljava/lang/String;
    goto :goto_0

    .line 399
    .end local v0    # "logLabel":Ljava/lang/String;
    :pswitch_1
    sget v0, Lcom/termux/shared/R$string;->log_level_debug:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "logLabel":Ljava/lang/String;
    goto :goto_0

    .line 398
    .end local v0    # "logLabel":Ljava/lang/String;
    :pswitch_2
    sget v0, Lcom/termux/shared/R$string;->log_level_normal:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "logLabel":Ljava/lang/String;
    goto :goto_0

    .line 397
    .end local v0    # "logLabel":Ljava/lang/String;
    :pswitch_3
    sget v0, Lcom/termux/shared/R$string;->log_level_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 404
    .restart local v0    # "logLabel":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (default)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 407
    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLogLevelLabelsArray(Landroid/content/Context;[Ljava/lang/CharSequence;Z)[Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logLevels"    # [Ljava/lang/CharSequence;
    .param p2, "addDefaultTag"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "logLevels",
            "addDefaultTag"
        }
    .end annotation

    .line 383
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 385
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 387
    .local v0, "logLevelLabels":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 388
    aget-object v2, p1, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2, p2}, Lcom/termux/shared/logger/Logger;->getLogLevelLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getLogLevelsArray()[Ljava/lang/CharSequence;
    .locals 3

    .line 374
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 375
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 376
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 377
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 378
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 374
    return-object v0
.end method

.method public static getMessageAndStackTraceString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 252
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 253
    const/4 v0, 0x0

    return-object v0

    .line 254
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 256
    :cond_1
    if-nez p1, :cond_2

    .line 257
    return-object p0

    .line 259
    :cond_2
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageAndStackTracesString(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "throwablesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 263
    .local p1, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 264
    :cond_0
    return-object v0

    .line 265
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/termux/shared/logger/Logger;->getStackTracesString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 267
    :cond_2
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 270
    :cond_3
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->getStackTracesString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 268
    :cond_4
    :goto_0
    return-object p0
.end method

.method public static getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "def"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "object",
            "def"
        }
    .end annotation

    .line 357
    if-eqz p1, :cond_0

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\n```\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n```\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 360
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "def"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "object",
            "def"
        }
    .end annotation

    .line 350
    if-eqz p1, :cond_0

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 276
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 278
    :cond_0
    const/4 v0, 0x0

    .line 281
    .local v0, "stackTraceString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 282
    .local v1, "errors":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 283
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 284
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 285
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 286
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v1    # "errors":Ljava/io/StringWriter;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 291
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public static getStackTracesMarkdownString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "stackTraceStringArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "label",
            "stackTraceStringArray"
        }
    .end annotation

    .line 330
    if-nez p0, :cond_0

    const-string p0, "StackTraces"

    .line 331
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, "stackTracesString":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_1

    .line 336
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_4

    .line 337
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 338
    const-string v2, "\n\n\n#### Stacktrace "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    :cond_2
    const-string v2, "\n\n```\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n```"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    .end local v1    # "i":I
    :cond_3
    :goto_1
    const-string v1, "\n\n`-`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_4
    const-string v1, "\n##\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStackTracesString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "stackTraceStringArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "label",
            "stackTraceStringArray"
        }
    .end annotation

    .line 312
    if-nez p0, :cond_0

    const-string p0, "StackTraces:"

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "stackTracesString":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_1

    .line 318
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_4

    .line 319
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 320
    const-string v2, "\n\nStacktrace "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    :cond_2
    const-string v2, "\n```\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    .end local v1    # "i":I
    :cond_3
    :goto_1
    const-string v1, " -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStackTracesStringArray(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 297
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTracesStringArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwablesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 301
    .local p0, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 302
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 303
    .local v0, "stackTraceStringArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 304
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lcom/termux/shared/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static isLogLevelValid(Ljava/lang/Integer;)Z
    .locals 2
    .param p0, "logLevel"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logLevel"
        }
    .end annotation

    .line 436
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$showToast$0(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toastText"    # Ljava/lang/String;
    .param p2, "longDuration"    # Z

    .line 368
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static logDebug(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 162
    const/4 v0, 0x3

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public static logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 158
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public static logDebugAndShowToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "message"
        }
    .end annotation

    .line 222
    const-string v0, "Termux"

    invoke-static {p0, v0, p1}, Lcom/termux/shared/logger/Logger;->logDebugAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public static logDebugAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "tag",
            "message"
        }
    .end annotation

    .line 213
    if-nez p0, :cond_0

    return-void

    .line 215
    :cond_0
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 216
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 219
    :cond_1
    return-void
.end method

.method public static logDebugExtended(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 170
    const/4 v0, 0x3

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public static logDebugExtended(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 166
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 108
    const/4 v0, 0x6

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 104
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "message"
        }
    .end annotation

    .line 207
    const-string v0, "Termux"

    invoke-static {p0, v0, p1}, Lcom/termux/shared/logger/Logger;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public static logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "tag",
            "message"
        }
    .end annotation

    .line 198
    if-nez p0, :cond_0

    return-void

    .line 200
    :cond_0
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 201
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {p0, p2, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 204
    :cond_1
    return-void
.end method

.method public static logErrorExtended(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 116
    const/4 v0, 0x6

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 112
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "logLevel"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "logLevel",
            "tag",
            "message"
        }
    .end annotation

    .line 68
    if-nez p2, :cond_0

    return-void

    .line 72
    :cond_0
    const-string v0, ""

    .line 75
    .local v0, "prefix":Ljava/lang/String;
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int v1, v1, 0xfdc

    add-int/lit8 v1, v1, -0x4

    .line 77
    .local v1, "maxEntrySize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, "messagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 80
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_2

    .line 81
    move v3, v1

    .line 82
    .local v3, "cutOffIndex":I
    const/16 v4, 0xa

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    .line 83
    .local v4, "nextNewlineIndex":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 84
    add-int/lit8 v3, v4, 0x1

    .line 86
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 89
    .end local v3    # "cutOffIndex":I
    .end local v4    # "nextNewlineIndex":I
    :cond_2
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 95
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v4}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method public static logInfo(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 144
    const/4 v0, 0x4

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public static logInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 140
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public static logInfoExtended(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 152
    const/4 v0, 0x4

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public static logInfoExtended(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 148
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public static logMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "logPriority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "logPriority",
            "tag",
            "message"
        }
    .end annotation

    .line 55
    const/4 v0, 0x1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    sget v1, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v1, v0, :cond_0

    .line 56
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :cond_0
    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    sget v1, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v1, v0, :cond_1

    .line 58
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :cond_1
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    sget v1, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v1, v0, :cond_2

    .line 60
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :cond_2
    const/4 v0, 0x2

    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    sget v2, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v2, v0, :cond_3

    .line 62
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_3
    if-ne p0, v0, :cond_4

    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v0, v1, :cond_4

    .line 64
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_4
    :goto_0
    return-void
.end method

.method public static logStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "throwable"
        }
    .end annotation

    .line 236
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    return-void
.end method

.method public static logStackTrace(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 240
    const-string v0, "Termux"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    return-void
.end method

.method public static logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwable"
        }
    .end annotation

    .line 228
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->getMessageAndStackTraceString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public static logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 232
    const-string v0, "Termux"

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    return-void
.end method

.method public static logStackTracesWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwablesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 246
    .local p2, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->getMessageAndStackTracesString(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public static logVerbose(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 180
    const/4 v0, 0x2

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public static logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 176
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public static logVerboseExtended(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 188
    const/4 v0, 0x2

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public static logVerboseExtended(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 184
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public static logVerboseForce(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 192
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method public static logWarn(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 126
    const/4 v0, 0x5

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static logWarn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 122
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static logWarnExtended(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 134
    const/4 v0, 0x5

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static logWarnExtended(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 130
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static setLogLevel(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logLevel"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "logLevel"
        }
    .end annotation

    .line 417
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->isLogLevelValid(Ljava/lang/Integer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 418
    sput p1, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    goto :goto_0

    .line 420
    :cond_0
    sput v1, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    .line 422
    :goto_0
    if-eqz p0, :cond_1

    .line 423
    sget v0, Lcom/termux/shared/R$string;->log_level_value:I

    new-array v2, v1, [Ljava/lang/Object;

    sget v3, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/termux/shared/logger/Logger;->getLogLevelLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 425
    :cond_1
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    return v0
.end method

.method public static shouldEnableLoggingForCustomLogLevel(Ljava/lang/Integer;)Z
    .locals 3
    .param p0, "customLogLevel"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customLogLevel"
        }
    .end annotation

    .line 442
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    sget v1, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 443
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/logger/Logger;->isLogLevelValid(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 444
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 442
    :cond_3
    :goto_1
    return v0
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toastText"    # Ljava/lang/String;
    .param p2, "longDuration"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "context",
            "toastText",
            "longDuration"
        }
    .end annotation

    .line 366
    if-nez p0, :cond_0

    return-void

    .line 368
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/termux/shared/logger/-$$Lambda$Logger$wWaVtEiVpYpaI9rDhMNt1ytaWvc;

    invoke-direct {v1, p0, p1, p2}, Lcom/termux/shared/logger/-$$Lambda$Logger$wWaVtEiVpYpaI9rDhMNt1ytaWvc;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    return-void
.end method
