.class Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;
.super Lkotlin/collections/CollectionsKt__IteratorsKt;
.source "MutableCollectionsJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a&\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u0087\u0008\u00a2\u0006\u0002\u0010\u0005\u001a\u0019\u0010\u0006\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u0087\u0008\u001a!\u0010\u0006\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0087\u0008\u001a \u0010\t\u001a\u00020\u0001\"\u000e\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\n*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003\u001a6\u0010\t\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\r0\u000cH\u0087\u0008\u00f8\u0001\u0000\u001a5\u0010\t\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u001a\u0010\u000e\u001a\u0016\u0012\u0006\u0008\u0000\u0012\u0002H\u00020\u000fj\n\u0012\u0006\u0008\u0000\u0012\u0002H\u0002`\u0010H\u0087\u0008\u001a2\u0010\u0011\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u001a\u0010\u000e\u001a\u0016\u0012\u0006\u0008\u0000\u0012\u0002H\u00020\u000fj\n\u0012\u0006\u0008\u0000\u0012\u0002H\u0002`\u0010\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0012"
    }
    d2 = {
        "fill",
        "",
        "T",
        "",
        "value",
        "(Ljava/util/List;Ljava/lang/Object;)V",
        "shuffle",
        "random",
        "Ljava/util/Random;",
        "sort",
        "",
        "comparison",
        "Lkotlin/Function2;",
        "",
        "comparator",
        "Ljava/util/Comparator;",
        "Lkotlin/Comparator;",
        "sortWith",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x1
    xs = "kotlin/collections/CollectionsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/CollectionsKt__IteratorsKt;-><init>()V

    return-void
.end method

.method private static final fill(Ljava/util/List;Ljava/lang/Object;)V
    .locals 1
    .param p0, "$this$fill"    # Ljava/util/List;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    .local v0, "$i$f$fill":I
    invoke-static {p0, p1}, Ljava/util/Collections;->fill(Ljava/util/List;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method private static final shuffle(Ljava/util/List;)V
    .locals 1
    .param p0, "$this$shuffle"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    .local v0, "$i$f$shuffle":I
    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 64
    return-void
.end method

.method private static final shuffle(Ljava/util/List;Ljava/util/Random;)V
    .locals 1
    .param p0, "$this$shuffle"    # Ljava/util/List;
    .param p1, "random"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    .local v0, "$i$f$shuffle":I
    invoke-static {p0, p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 73
    return-void
.end method

.method public static final sort(Ljava/util/List;)V
    .locals 2
    .param p0, "$this$sort"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "$this$sort"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 32
    :cond_0
    return-void
.end method

.method private static final sort(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 4
    .param p0, "$this$sort"    # Ljava/util/List;
    .param p1, "comparator"    # Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use sortWith(comparator) instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.sortWith(comparator)"
            imports = {}
        .end subannotation
    .end annotation

    const/4 v0, 0x0

    .line 15
    .local v0, "$i$f$sort":I
    new-instance v1, Lkotlin/NotImplementedError;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private static final sort(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .param p0, "$this$sort"    # Ljava/util/List;
    .param p1, "comparison"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use sortWith(Comparator(comparison)) instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.sortWith(Comparator(comparison))"
            imports = {}
        .end subannotation
    .end annotation

    const/4 v0, 0x0

    .line 20
    .local v0, "$i$f$sort":I
    new-instance v1, Lkotlin/NotImplementedError;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final sortWith(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 2
    .param p0, "$this$sortWith"    # Ljava/util/List;
    .param p1, "comparator"    # Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "$this$sortWith"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 43
    :cond_0
    return-void
.end method
