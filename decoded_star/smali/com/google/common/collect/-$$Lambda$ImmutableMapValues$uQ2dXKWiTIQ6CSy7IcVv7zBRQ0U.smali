.class public final synthetic Lcom/google/common/collect/-$$Lambda$ImmutableMapValues$uQ2dXKWiTIQ6CSy7IcVv7zBRQ0U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$ImmutableMapValues$uQ2dXKWiTIQ6CSy7IcVv7zBRQ0U;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$ImmutableMapValues$uQ2dXKWiTIQ6CSy7IcVv7zBRQ0U;->f$0:Ljava/util/function/Consumer;

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/ImmutableMapValues;->lambda$forEach$0(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
