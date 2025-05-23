.class public Lorg/commonmark/internal/BlockStartImpl;
.super Lorg/commonmark/parser/block/BlockStart;
.source "BlockStartImpl.java"


# instance fields
.field private final blockParsers:[Lorg/commonmark/parser/block/BlockParser;

.field private newColumn:I

.field private newIndex:I

.field private replaceActiveBlockParser:Z


# direct methods
.method public varargs constructor <init>([Lorg/commonmark/parser/block/BlockParser;)V
    .locals 1
    .param p1, "blockParsers"    # [Lorg/commonmark/parser/block/BlockParser;

    .line 13
    invoke-direct {p0}, Lorg/commonmark/parser/block/BlockStart;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lorg/commonmark/internal/BlockStartImpl;->newIndex:I

    .line 10
    iput v0, p0, Lorg/commonmark/internal/BlockStartImpl;->newColumn:I

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/commonmark/internal/BlockStartImpl;->replaceActiveBlockParser:Z

    .line 14
    iput-object p1, p0, Lorg/commonmark/internal/BlockStartImpl;->blockParsers:[Lorg/commonmark/parser/block/BlockParser;

    .line 15
    return-void
.end method


# virtual methods
.method public atColumn(I)Lorg/commonmark/parser/block/BlockStart;
    .locals 0
    .param p1, "newColumn"    # I

    .line 41
    iput p1, p0, Lorg/commonmark/internal/BlockStartImpl;->newColumn:I

    .line 42
    return-object p0
.end method

.method public atIndex(I)Lorg/commonmark/parser/block/BlockStart;
    .locals 0
    .param p1, "newIndex"    # I

    .line 35
    iput p1, p0, Lorg/commonmark/internal/BlockStartImpl;->newIndex:I

    .line 36
    return-object p0
.end method

.method public getBlockParsers()[Lorg/commonmark/parser/block/BlockParser;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/commonmark/internal/BlockStartImpl;->blockParsers:[Lorg/commonmark/parser/block/BlockParser;

    return-object v0
.end method

.method public getNewColumn()I
    .locals 1

    .line 26
    iget v0, p0, Lorg/commonmark/internal/BlockStartImpl;->newColumn:I

    return v0
.end method

.method public getNewIndex()I
    .locals 1

    .line 22
    iget v0, p0, Lorg/commonmark/internal/BlockStartImpl;->newIndex:I

    return v0
.end method

.method public isReplaceActiveBlockParser()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lorg/commonmark/internal/BlockStartImpl;->replaceActiveBlockParser:Z

    return v0
.end method

.method public replaceActiveBlockParser()Lorg/commonmark/parser/block/BlockStart;
    .locals 1

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/commonmark/internal/BlockStartImpl;->replaceActiveBlockParser:Z

    .line 48
    return-object p0
.end method
