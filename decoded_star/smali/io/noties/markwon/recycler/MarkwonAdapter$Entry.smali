.class public abstract Lio/noties/markwon/recycler/MarkwonAdapter$Entry;
.super Ljava/lang/Object;
.source "MarkwonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/recycler/MarkwonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/commonmark/node/Node;",
        "H:",
        "Lio/noties/markwon/recycler/MarkwonAdapter$Holder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    .local p0, "this":Lio/noties/markwon/recycler/MarkwonAdapter$Entry;, "Lio/noties/markwon/recycler/MarkwonAdapter$Entry<TN;TH;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindHolder(Lio/noties/markwon/Markwon;Lio/noties/markwon/recycler/MarkwonAdapter$Holder;Lorg/commonmark/node/Node;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/noties/markwon/Markwon;",
            "TH;TN;)V"
        }
    .end annotation
.end method

.method public clear()V
    .locals 0

    .line 154
    .local p0, "this":Lio/noties/markwon/recycler/MarkwonAdapter$Entry;, "Lio/noties/markwon/recycler/MarkwonAdapter$Entry<TN;TH;>;"
    return-void
.end method

.method public abstract createHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lio/noties/markwon/recycler/MarkwonAdapter$Holder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            ")TH;"
        }
    .end annotation
.end method

.method public id(Lorg/commonmark/node/Node;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)J"
        }
    .end annotation

    .line 157
    .local p0, "this":Lio/noties/markwon/recycler/MarkwonAdapter$Entry;, "Lio/noties/markwon/recycler/MarkwonAdapter$Entry<TN;TH;>;"
    .local p1, "node":Lorg/commonmark/node/Node;, "TN;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public onViewRecycled(Lio/noties/markwon/recycler/MarkwonAdapter$Holder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)V"
        }
    .end annotation

    .line 162
    .local p0, "this":Lio/noties/markwon/recycler/MarkwonAdapter$Entry;, "Lio/noties/markwon/recycler/MarkwonAdapter$Entry<TN;TH;>;"
    .local p1, "holder":Lio/noties/markwon/recycler/MarkwonAdapter$Holder;, "TH;"
    return-void
.end method
