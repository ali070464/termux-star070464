.class public final Lkotlin/coroutines/cancellation/CancellationExceptionKt;
.super Ljava/lang/Object;
.source "CancellationException.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancellationException.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellationException.kt\nkotlin/coroutines/cancellation/CancellationExceptionKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,22:1\n1#2:23\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a!\u0010\u0000\u001a\u00060\u0001j\u0002`\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0087\u0008\u001a\u0017\u0010\u0000\u001a\u00060\u0001j\u0002`\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0087\u0008*\u001a\u0008\u0007\u0010\u0000\"\u00020\u00012\u00020\u0001B\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u00a8\u0006\n"
    }
    d2 = {
        "CancellationException",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlin/coroutines/cancellation/CancellationException;",
        "message",
        "",
        "cause",
        "",
        "Lkotlin/SinceKotlin;",
        "version",
        "1.4",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method private static final CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;

    const/4 v0, 0x0

    .line 16
    .local v0, "$i$f$CancellationException":I
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .line 23
    .local v2, "it":Ljava/util/concurrent/CancellationException;
    const/4 v3, 0x0

    .line 16
    .local v3, "$i$a$-also-CancellationExceptionKt$CancellationException$1":I
    invoke-virtual {v2, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .end local v2    # "it":Ljava/util/concurrent/CancellationException;
    .end local v3    # "$i$a$-also-CancellationExceptionKt$CancellationException$1":I
    return-object v1
.end method

.method private static final CancellationException(Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 4
    .param p0, "cause"    # Ljava/lang/Throwable;

    const/4 v0, 0x0

    .line 21
    .local v0, "$i$f$CancellationException":I
    new-instance v1, Ljava/util/concurrent/CancellationException;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .line 23
    .local v2, "it":Ljava/util/concurrent/CancellationException;
    const/4 v3, 0x0

    .line 21
    .local v3, "$i$a$-also-CancellationExceptionKt$CancellationException$2":I
    invoke-virtual {v2, p0}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .end local v2    # "it":Ljava/util/concurrent/CancellationException;
    .end local v3    # "$i$a$-also-CancellationExceptionKt$CancellationException$2":I
    return-object v1
.end method

.method public static synthetic CancellationException$annotations()V
    .locals 0

    return-void
.end method
