.class public Lorg/commonmark/node/StrongEmphasis;
.super Lorg/commonmark/node/Node;
.source "StrongEmphasis.java"

# interfaces
.implements Lorg/commonmark/node/Delimited;


# instance fields
.field private delimiter:Ljava/lang/String;


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
    .param p1, "delimiter"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Lorg/commonmark/node/Node;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/commonmark/node/StrongEmphasis;->delimiter:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public accept(Lorg/commonmark/node/Visitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/commonmark/node/Visitor;

    .line 30
    invoke-interface {p1, p0}, Lorg/commonmark/node/Visitor;->visit(Lorg/commonmark/node/StrongEmphasis;)V

    .line 31
    return-void
.end method

.method public getClosingDelimiter()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/commonmark/node/StrongEmphasis;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getOpeningDelimiter()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/commonmark/node/StrongEmphasis;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0
    .param p1, "delimiter"    # Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lorg/commonmark/node/StrongEmphasis;->delimiter:Ljava/lang/String;

    .line 16
    return-void
.end method
