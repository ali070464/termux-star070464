.class public Lorg/commonmark/node/Image;
.super Lorg/commonmark/node/Node;
.source "Image.java"


# instance fields
.field private destination:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/commonmark/node/Node;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "destination"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Lorg/commonmark/node/Node;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/commonmark/node/Image;->destination:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lorg/commonmark/node/Image;->title:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public accept(Lorg/commonmark/node/Visitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/commonmark/node/Visitor;

    .line 18
    invoke-interface {p1, p0}, Lorg/commonmark/node/Visitor;->visit(Lorg/commonmark/node/Image;)V

    .line 19
    return-void
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/commonmark/node/Image;->destination:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/commonmark/node/Image;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDestination(Ljava/lang/String;)V
    .locals 0
    .param p1, "destination"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lorg/commonmark/node/Image;->destination:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lorg/commonmark/node/Image;->title:Ljava/lang/String;

    .line 35
    return-void
.end method

.method protected toStringAttributes()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/commonmark/node/Image;->destination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/commonmark/node/Image;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
