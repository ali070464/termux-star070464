.class Lcom/google/common/cache/CacheBuilderSpec$MaximumSizeParser;
.super Lcom/google/common/cache/CacheBuilderSpec$LongParser;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MaximumSizeParser"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 331
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$LongParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseLong(Lcom/google/common/cache/CacheBuilderSpec;J)V
    .locals 5
    .param p1, "spec"    # Lcom/google/common/cache/CacheBuilderSpec;
    .param p2, "value"    # J

    .line 334
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    const-string v4, "maximum size was already set to "

    invoke-static {v0, v4, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 335
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    const-string v2, "maximum weight was already set to "

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 337
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    .line 338
    return-void
.end method
