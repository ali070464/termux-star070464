.class public final synthetic Lcom/google/common/collect/-$$Lambda$ImmutableMultimap$PRQyuBWWXUCJaPETBH4eIkmR7bA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$ImmutableMultimap$PRQyuBWWXUCJaPETBH4eIkmR7bA;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$ImmutableMultimap$PRQyuBWWXUCJaPETBH4eIkmR7bA;->f$0:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableMultimap;->lambda$null$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
