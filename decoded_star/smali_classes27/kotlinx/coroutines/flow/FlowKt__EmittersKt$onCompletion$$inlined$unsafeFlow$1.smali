.class public final Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__EmittersKt;->onCompletion(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;
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
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,112:1\n147#2,13:113\n160#2,6:127\n329#3:126\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n159#1:126\n*E\n"
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
.field final synthetic $action$inlined:Lkotlin/jvm/functions/Function3;

.field final synthetic $this_onCompletion$inlined:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;->$this_onCompletion$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;->$action$inlined:Lkotlin/jvm/functions/Function3;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
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

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 105
    iget v2, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x0

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
    move p1, v4

    .local p1, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    move-object v1, v3

    .local v1, "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    const/4 p1, 0x0

    iget-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Lkotlinx/coroutines/flow/internal/SafeCollector;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 131
    :catchall_0
    move-exception v2

    goto/16 :goto_3

    .line 105
    .end local v1    # "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    .end local p1    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    :pswitch_1
    move-object p1, p0

    .local p1, "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
    move v1, v4

    .local v1, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    move-object v2, v3

    .local v2, "e":Ljava/lang/Throwable;
    .local v3, "$this$onCompletion_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v1, 0x0

    iget-object v4, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v1    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "$this$onCompletion_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p1    # "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
    :pswitch_2
    move-object p1, p0

    .restart local p1    # "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
    move v2, v4

    .local v2, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    move-object v4, v3

    .local v4, "$this$onCompletion_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v2, 0x0

    iget-object v5, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    move-object v4, v5

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v5, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    move-object p1, v5

    check-cast p1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 115
    :catchall_1
    move-exception v5

    move v6, v2

    move-object v2, v5

    move-object v5, v4

    goto :goto_4

    .line 105
    .end local v2    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    .end local v4    # "$this$onCompletion_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p1    # "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
    :pswitch_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 108
    .local v2, "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
    .local p1, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v4, p2

    check-cast v4, Lkotlin/coroutines/Continuation;

    .local v4, "$completion":Lkotlin/coroutines/Continuation;
    move-object v5, p1

    .local v5, "$this$onCompletion_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v6, 0x0

    .line 113
    .local v6, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    nop

    .line 114
    .end local v4    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_2
    iget-object v4, v2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;->$this_onCompletion$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->label:I

    invoke-interface {v4, v5, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    if-ne v4, v1, :cond_1

    .line 105
    return-object v1

    .line 114
    :cond_1
    move-object p1, v2

    move-object v4, v5

    move v2, v6

    .end local v5    # "$this$onCompletion_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v6    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    .local v2, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    .local v4, "$this$onCompletion_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    .local p1, "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
    :goto_1
    nop

    .line 125
    const/4 v5, 0x0

    .line 126
    .local v5, "$i$f$currentCoroutineContext":I
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    .line 125
    .end local v5    # "$i$f$currentCoroutineContext":I
    new-instance v5, Lkotlinx/coroutines/flow/internal/SafeCollector;

    invoke-direct {v5, v4, v6}, Lkotlinx/coroutines/flow/internal/SafeCollector;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)V

    .line 127
    .local v5, "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    nop

    .line 128
    :try_start_3
    iget-object v6, p1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;->$action$inlined:Lkotlin/jvm/functions/Function3;

    iput-object v5, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    iput-object v3, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->label:I

    const/4 v7, 0x6

    invoke-static {v7}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v6, v5, v3, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x7

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v4    # "$this$onCompletion_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p1    # "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
    if-ne v3, v1, :cond_2

    .line 105
    return-object v1

    .line 128
    :cond_2
    move p1, v2

    move-object v1, v5

    .line 130
    .end local v2    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    .end local v5    # "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    .local v1, "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    .local p1, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    :goto_2
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/internal/SafeCollector;->releaseIntercepted()V

    .line 131
    nop

    .line 132
    nop

    .end local v1    # "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    .end local p1    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 109
    return-object p1

    .line 131
    .restart local v2    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    .restart local v5    # "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    :catchall_2
    move-exception p1

    move-object v1, v5

    move v8, v2

    move-object v2, p1

    move p1, v8

    .line 130
    .end local v2    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    .end local v5    # "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    .restart local v1    # "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    .restart local p1    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    :goto_3
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/internal/SafeCollector;->releaseIntercepted()V

    throw v2

    .line 115
    .end local v1    # "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    .end local p1    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    .local v2, "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
    .local v5, "$this$onCompletion_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v6    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    :catchall_3
    move-exception p1

    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    .line 121
    .local v2, "e":Ljava/lang/Throwable;
    .local p1, "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
    :goto_4
    new-instance v4, Lkotlinx/coroutines/flow/ThrowingCollector;

    invoke-direct {v4, v2}, Lkotlinx/coroutines/flow/ThrowingCollector;-><init>(Ljava/lang/Throwable;)V

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v7, p1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;->$action$inlined:Lkotlin/jvm/functions/Function3;

    iput-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    iput-object v3, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->label:I

    invoke-static {v4, v7, v2, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt;->access$invokeSafely(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function3;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_3

    .line 105
    return-object v1

    .line 121
    :cond_3
    move-object v3, v5

    move v1, v6

    .line 122
    .end local v5    # "$this$onCompletion_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v6    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    .local v1, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    .restart local v3    # "$this$onCompletion_u24lambda_u2d3":Lkotlinx/coroutines/flow/FlowCollector;
    :goto_5
    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
