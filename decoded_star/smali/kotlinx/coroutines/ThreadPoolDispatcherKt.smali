.class public final Lkotlinx/coroutines/ThreadPoolDispatcherKt;
.super Ljava/lang/Object;
.source "ThreadPoolDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThreadPoolDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadPoolDispatcher.kt\nkotlinx/coroutines/ThreadPoolDispatcherKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,99:1\n1#2:100\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u001a\u0010\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "newFixedThreadPoolContext",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "nThreads",
        "",
        "name",
        "",
        "newSingleThreadContext",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final newFixedThreadPoolContext(ILjava/lang/String;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .locals 3
    .param p0, "nThreads"    # I
    .param p1, "name"    # Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Lkotlinx/coroutines/ThreadPoolDispatcher;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/ThreadPoolDispatcher;-><init>(ILjava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    return-object v0

    .line 100
    :cond_1
    const/4 v0, 0x0

    .line 61
    .local v0, "$i$a$-require-ThreadPoolDispatcherKt$newFixedThreadPoolContext$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected at least one thread, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " specified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-ThreadPoolDispatcherKt$newFixedThreadPoolContext$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final newSingleThreadContext(Ljava/lang/String;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lkotlinx/coroutines/ThreadPoolDispatcherKt;->newFixedThreadPoolContext(ILjava/lang/String;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method
