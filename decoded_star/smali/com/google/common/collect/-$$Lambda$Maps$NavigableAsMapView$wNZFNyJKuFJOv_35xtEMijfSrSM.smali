.class public final synthetic Lcom/google/common/collect/-$$Lambda$Maps$NavigableAsMapView$wNZFNyJKuFJOv_35xtEMijfSrSM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/common/collect/Maps$NavigableAsMapView;

.field public final synthetic f$1:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Maps$NavigableAsMapView;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Maps$NavigableAsMapView$wNZFNyJKuFJOv_35xtEMijfSrSM;->f$0:Lcom/google/common/collect/Maps$NavigableAsMapView;

    iput-object p2, p0, Lcom/google/common/collect/-$$Lambda$Maps$NavigableAsMapView$wNZFNyJKuFJOv_35xtEMijfSrSM;->f$1:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$Maps$NavigableAsMapView$wNZFNyJKuFJOv_35xtEMijfSrSM;->f$0:Lcom/google/common/collect/Maps$NavigableAsMapView;

    iget-object v1, p0, Lcom/google/common/collect/-$$Lambda$Maps$NavigableAsMapView$wNZFNyJKuFJOv_35xtEMijfSrSM;->f$1:Ljava/util/function/BiConsumer;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/Maps$NavigableAsMapView;->lambda$forEach$1$Maps$NavigableAsMapView(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    return-void
.end method
