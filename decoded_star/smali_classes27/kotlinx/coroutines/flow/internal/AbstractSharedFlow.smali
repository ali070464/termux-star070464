.class public abstract Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
.super Ljava/lang/Object;
.source "AbstractSharedFlow.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 2 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,102:1\n20#2:103\n20#2:104\n20#2:106\n1#3:105\n13536#4,2:107\n*S KotlinDebug\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n*L\n32#1:103\n47#1:104\n78#1:106\n97#1:107,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008 \u0018\u0000*\u000c\u0008\u0000\u0010\u0001*\u0006\u0012\u0002\u0008\u00030\u00022\u00060\u0003j\u0002`\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\r\u0010\u0018\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u0010\u0019J\r\u0010\u001a\u001a\u00028\u0000H$\u00a2\u0006\u0002\u0010\u0019J\u001d\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000e2\u0006\u0010\u001c\u001a\u00020\u0008H$\u00a2\u0006\u0002\u0010\u001dJ\u001d\u0010\u001e\u001a\u00020\u001f2\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001f0!H\u0084\u0008J\u0015\u0010\"\u001a\u00020\u001f2\u0006\u0010#\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u0010$R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008@BX\u0084\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R:\u0010\u000f\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u000e2\u0010\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u000e@BX\u0084\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0013\u0012\u0004\u0008\u0010\u0010\u0005\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006%"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;",
        "S",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;",
        "",
        "Lkotlinx/coroutines/internal/SynchronizedObject;",
        "()V",
        "_subscriptionCount",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "<set-?>",
        "nCollectors",
        "getNCollectors",
        "()I",
        "nextIndex",
        "",
        "slots",
        "getSlots$annotations",
        "getSlots",
        "()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;",
        "[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;",
        "subscriptionCount",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getSubscriptionCount",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "allocateSlot",
        "()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;",
        "createSlot",
        "createSlotArray",
        "size",
        "(I)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;",
        "forEachSlotLocked",
        "",
        "block",
        "Lkotlin/Function1;",
        "freeSlot",
        "slot",
        "(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private _subscriptionCount:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nCollectors:I

.field private nextIndex:I

.field private slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getNCollectors(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)I
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;

    .line 22
    iget v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    return v0
.end method

.method public static final synthetic access$getSlots(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;

    .line 22
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    return-object v0
.end method

.method protected static synthetic getSlots$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected final allocateSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "subscriptionCount":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 104
    .local v1, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v2, 0x0

    .line 48
    .local v2, "$i$a$-synchronized-AbstractSharedFlow$allocateSlot$slot$1":I
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getSlots()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v3

    .line 49
    .local v3, "curSlots":[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    const/4 v4, 0x2

    if-nez v3, :cond_0

    invoke-virtual {p0, v4}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->createSlotArray(I)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v4

    move-object v5, v4

    .line 105
    .local v5, "it":[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    const/4 v6, 0x0

    .line 49
    .local v6, "$i$a$-also-AbstractSharedFlow$allocateSlot$slot$1$slots$1":I
    iput-object v5, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-object v3, v4

    .end local v5    # "it":[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .end local v6    # "$i$a$-also-AbstractSharedFlow$allocateSlot$slot$1$slots$1":I
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getNCollectors()I

    move-result v5

    array-length v6, v3

    if-lt v5, v6, :cond_1

    .line 51
    array-length v5, v3

    mul-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v4

    check-cast v5, [Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 105
    .restart local v5    # "it":[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    const/4 v6, 0x0

    .line 51
    .local v6, "$i$a$-also-AbstractSharedFlow$allocateSlot$slot$1$slots$2":I
    iput-object v5, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .end local v5    # "it":[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .end local v6    # "$i$a$-also-AbstractSharedFlow$allocateSlot$slot$1$slots$2":I
    check-cast v4, [Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-object v3, v4

    goto :goto_0

    .line 53
    :cond_1
    nop

    .line 48
    .end local v3    # "curSlots":[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    :goto_0
    nop

    .line 56
    .local v3, "slots":[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    const/4 v4, 0x0

    .local v4, "index":I
    iget v5, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nextIndex:I

    move v4, v5

    const/4 v5, 0x0

    .line 58
    .local v5, "slot":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    :cond_2
    nop

    .line 59
    aget-object v6, v3, v4

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->createSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v6

    move-object v7, v6

    .line 105
    .local v7, "it":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    const/4 v8, 0x0

    .line 59
    .local v8, "$i$a$-also-AbstractSharedFlow$allocateSlot$slot$1$1":I
    aput-object v7, v3, v4

    .end local v7    # "it":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .end local v8    # "$i$a$-also-AbstractSharedFlow$allocateSlot$slot$1$1":I
    :cond_3
    move-object v5, v6

    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 61
    array-length v6, v3

    if-lt v4, v6, :cond_4

    const/4 v4, 0x0

    .line 62
    :cond_4
    invoke-virtual {v5, p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;->allocateLocked(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 64
    iput v4, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nextIndex:I

    .line 65
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getNCollectors()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    .line 66
    iget-object v6, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->_subscriptionCount:Lkotlinx/coroutines/flow/MutableStateFlow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    .line 67
    nop

    .end local v2    # "$i$a$-synchronized-AbstractSharedFlow$allocateSlot$slot$1":I
    .end local v3    # "slots":[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .end local v4    # "index":I
    .end local v5    # "slot":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    monitor-exit p0

    .line 104
    nop

    .line 47
    .end local v1    # "$i$f$synchronized":I
    move-object v1, v5

    .line 70
    .local v1, "slot":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v0, v7}, Lkotlinx/coroutines/flow/StateFlowKt;->increment(Lkotlinx/coroutines/flow/MutableStateFlow;I)V

    .line 71
    :goto_1
    return-object v1

    .line 67
    .local v1, "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected abstract createSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method protected abstract createSlotArray(I)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TS;"
        }
    .end annotation
.end method

.method protected final forEachSlotLocked(Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TS;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 96
    .local v0, "$i$f$forEachSlotLocked":I
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getNCollectors(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getSlots(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .local v1, "$this$forEach$iv":[Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    .line 107
    .local v2, "$i$f$forEach":I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    .local v6, "slot":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    const/4 v7, 0x0

    .line 98
    .local v7, "$i$a$-forEach-AbstractSharedFlow$forEachSlotLocked$1":I
    if-eqz v6, :cond_2

    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_2
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "slot":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .end local v7    # "$i$a$-forEach-AbstractSharedFlow$forEachSlotLocked$1":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    :cond_3
    nop

    .line 100
    .end local v1    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$forEach":I
    :goto_1
    return-void
.end method

.method protected final freeSlot(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V
    .locals 8
    .param p1, "slot"    # Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "subscriptionCount":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 106
    .local v1, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v2, 0x0

    .line 79
    .local v2, "$i$a$-synchronized-AbstractSharedFlow$freeSlot$resumes$1":I
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getNCollectors()I

    move-result v3

    const/4 v4, -0x1

    add-int/2addr v3, v4

    iput v3, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    .line 80
    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->_subscriptionCount:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v0, v3

    .line 82
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getNCollectors()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_0

    iput v5, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nextIndex:I

    .line 83
    :cond_0
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;->freeLocked(Ljava/lang/Object;)[Lkotlin/coroutines/Continuation;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "$i$a$-synchronized-AbstractSharedFlow$freeSlot$resumes$1":I
    monitor-exit p0

    .line 106
    nop

    .line 78
    .end local v1    # "$i$f$synchronized":I
    move-object v1, v3

    .line 90
    .local v1, "resumes":[Lkotlin/coroutines/Continuation;
    array-length v2, v1

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v3, v1, v5

    .local v3, "cont":Lkotlin/coroutines/Continuation;
    add-int/lit8 v5, v5, 0x1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    .end local v3    # "cont":Lkotlin/coroutines/Continuation;
    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0, v4}, Lkotlinx/coroutines/flow/StateFlowKt;->increment(Lkotlinx/coroutines/flow/MutableStateFlow;I)V

    .line 93
    :goto_1
    return-void

    .line 83
    .local v1, "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected final getNCollectors()I
    .locals 1

    .line 26
    iget v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    return v0
.end method

.method protected final getSlots()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TS;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    return-object v0
.end method

.method public final getSubscriptionCount()Lkotlinx/coroutines/flow/StateFlow;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    .line 103
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 34
    .local v1, "$i$a$-synchronized-AbstractSharedFlow$subscriptionCount$1":I
    :try_start_0
    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->_subscriptionCount:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getNCollectors()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    move-object v3, v2

    .local v3, "it":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v4, 0x0

    .line 35
    .local v4, "$i$a$-also-AbstractSharedFlow$subscriptionCount$1$1":I
    iput-object v3, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->_subscriptionCount:Lkotlinx/coroutines/flow/MutableStateFlow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    nop

    .line 34
    .end local v3    # "it":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v4    # "$i$a$-also-AbstractSharedFlow$subscriptionCount$1$1":I
    :cond_0
    nop

    .end local v1    # "$i$a$-synchronized-AbstractSharedFlow$subscriptionCount$1":I
    monitor-exit p0

    .line 103
    nop

    .end local v0    # "$i$f$synchronized":I
    check-cast v2, Lkotlinx/coroutines/flow/StateFlow;

    .line 37
    return-object v2

    .line 34
    .restart local v0    # "$i$f$synchronized":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
