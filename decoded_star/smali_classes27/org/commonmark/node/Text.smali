.class public Lorg/commonmark/node/Text;
.super Lorg/commonmark/node/Node;
.source "Text.java"


# instance fields
.field private literal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/commonmark/node/Node;-><init>()V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "literal"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Lorg/commonmark/node/Node;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/commonmark/node/Text;->literal:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public accept(Lorg/commonmark/node/Visitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/commonmark/node/Visitor;

    .line 16
    invoke-interface {p1, p0}, Lorg/commonmark/node/Visitor;->visit(Lorg/commonmark/node/Text;)V

    .line 17
    return-void
.end method

.method public getLiteral()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/commonmark/node/Text;->literal:Ljava/lang/String;

    return-object v0
.end method

.method public setLiteral(Ljava/lang/String;)V
    .locals 0
    .param p1, "literal"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lorg/commonmark/node/Text;->literal:Ljava/lang/String;

    .line 25
    return-void
.end method

.method protected toStringAttributes()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "literal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/commonmark/node/Text;->literal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
