.class public final synthetic Lcom/google/common/collect/-$$Lambda$ImmutableMultimap$4xkt12sxI0NSOUxl3PZ8AHCjWyo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BiConsumer;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$ImmutableMultimap$4xkt12sxI0NSOUxl3PZ8AHCjWyo;->f$0:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Lcom/google/common/collect/-$$Lambda$ImmutableMultimap$4xkt12sxI0NSOUxl3PZ8AHCjWyo;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$ImmutableMultimap$4xkt12sxI0NSOUxl3PZ8AHCjWyo;->f$0:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/google/common/collect/-$$Lambda$ImmutableMultimap$4xkt12sxI0NSOUxl3PZ8AHCjWyo;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/ImmutableMultimap;->lambda$null$2(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
