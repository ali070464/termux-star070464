.class public final synthetic Lcom/google/common/collect/-$$Lambda$ArrayTable$yqJBEUhtD7sOM-8hNQp9h3Mi57Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lcom/google/common/collect/ArrayTable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$ArrayTable$yqJBEUhtD7sOM-8hNQp9h3Mi57Y;->f$0:Lcom/google/common/collect/ArrayTable;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$ArrayTable$yqJBEUhtD7sOM-8hNQp9h3Mi57Y;->f$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0, p1}, Lcom/google/common/collect/ArrayTable;->lambda$yqJBEUhtD7sOM-8hNQp9h3Mi57Y(Lcom/google/common/collect/ArrayTable;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
