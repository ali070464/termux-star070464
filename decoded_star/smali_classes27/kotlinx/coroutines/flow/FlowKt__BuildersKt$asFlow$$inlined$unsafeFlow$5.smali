.class public final Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__BuildersKt;->asFlow(Lkotlin/sequences/Sequence;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,112:1\n110#2:113\n111#2,2:115\n113#2:118\n1290#3:114\n1291#3:117\n*S KotlinDebug\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n110#1:114\n110#1:117\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1",
        "Lkotlinx/coroutines/flow/Flow;",
        "collect",
        "",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field final synthetic $this_asFlow$inlined:Lkotlin/sequences/Sequence;


# direct methods
.method public constructor <init>(Lkotlin/sequences/Sequence;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5;->$this_asFlow$inlined:Lkotlin/sequences/Sequence;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 105
    iget v2, p2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 109
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 v2, 0x0

    move v4, v2

    .local v4, "$i$a$-forEach-FlowKt__BuildersKt$asFlow$5$1":I
    move v5, v2

    .local v2, "$i$f$forEach":I
    .local v5, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$5":I
    move-object v6, v3

    .local v6, "$this$asFlow_u24lambda_u2d7":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v7, p2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, p2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5$1;->L$0:Ljava/lang/Object;

    move-object v6, v8

    check-cast v6, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v8, v2

    move-object v9, v7

    move-object v2, p0

    move v7, v5

    move-object v5, v6

    move-object v6, v3

    goto :goto_2

    .end local v2    # "$i$f$forEach":I
    .end local v4    # "$i$a$-forEach-FlowKt__BuildersKt$asFlow$5$1":I
    .end local v5    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$5":I
    .end local v6    # "$this$asFlow_u24lambda_u2d7":Lkotlinx/coroutines/flow/FlowCollector;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 108
    .local v2, "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5;
    .local p1, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v3, p2

    check-cast v3, Lkotlin/coroutines/Continuation;

    .local v3, "$completion":Lkotlin/coroutines/Continuation;
    move-object v4, p1

    .local v4, "$this$asFlow_u24lambda_u2d7":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v5, 0x0

    .line 113
    .restart local v5    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$5":I
    iget-object v6, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5;->$this_asFlow$inlined:Lkotlin/sequences/Sequence;

    .local v6, "$this$forEach$iv":Lkotlin/sequences/Sequence;
    const/4 v7, 0x0

    .line 114
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "value":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 115
    .end local v3    # "$completion":Lkotlin/coroutines/Continuation;
    .local v11, "$i$a$-forEach-FlowKt__BuildersKt$asFlow$5$1":I
    iput-object v4, p2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5$1;->L$0:Ljava/lang/Object;

    iput-object v8, p2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5$1;->L$1:Ljava/lang/Object;

    const/4 v12, 0x1

    iput v12, p2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5$1;->label:I

    invoke-interface {v4, v10, p2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    .end local v2    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5;
    .end local v6    # "$this$forEach$iv":Lkotlin/sequences/Sequence;
    .end local v9    # "element$iv":Ljava/lang/Object;
    .end local v10    # "value":Ljava/lang/Object;
    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    if-ne v9, v1, :cond_1

    .line 105
    return-object v1

    .line 115
    :cond_1
    move-object v9, v8

    move v8, v7

    move v7, v5

    move-object v5, v4

    move v4, v11

    .line 116
    .end local v11    # "$i$a$-forEach-FlowKt__BuildersKt$asFlow$5$1":I
    .local v4, "$i$a$-forEach-FlowKt__BuildersKt$asFlow$5$1":I
    .local v5, "$this$asFlow_u24lambda_u2d7":Lkotlinx/coroutines/flow/FlowCollector;
    .local v7, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$5":I
    .local v8, "$i$f$forEach":I
    :goto_2
    nop

    .end local v4    # "$i$a$-forEach-FlowKt__BuildersKt$asFlow$5$1":I
    .restart local v2    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5;
    .restart local v3    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v6    # "$this$forEach$iv":Lkotlin/sequences/Sequence;
    move-object v4, v5

    move v5, v7

    move v7, v8

    move-object v8, v9

    .restart local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    goto :goto_1

    .line 117
    .end local v2    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5;
    .end local v3    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v6    # "$this$forEach$iv":Lkotlin/sequences/Sequence;
    .end local v8    # "$i$f$forEach":I
    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local v4, "$this$asFlow_u24lambda_u2d7":Lkotlinx/coroutines/flow/FlowCollector;
    .local v5, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$5":I
    .local v7, "$i$f$forEach":I
    :cond_2
    nop

    .line 118
    .end local v7    # "$i$f$forEach":I
    nop

    .end local v4    # "$this$asFlow_u24lambda_u2d7":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v5    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$5":I
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 109
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
