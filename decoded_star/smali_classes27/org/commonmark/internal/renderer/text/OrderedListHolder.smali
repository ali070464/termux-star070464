.class public Lorg/commonmark/internal/renderer/text/OrderedListHolder;
.super Lorg/commonmark/internal/renderer/text/ListHolder;
.source "OrderedListHolder.java"


# instance fields
.field private counter:I

.field private final delimiter:C


# direct methods
.method public constructor <init>(Lorg/commonmark/internal/renderer/text/ListHolder;Lorg/commonmark/node/OrderedList;)V
    .locals 1
    .param p1, "parent"    # Lorg/commonmark/internal/renderer/text/ListHolder;
    .param p2, "list"    # Lorg/commonmark/node/OrderedList;

    .line 10
    invoke-direct {p0, p1}, Lorg/commonmark/internal/renderer/text/ListHolder;-><init>(Lorg/commonmark/internal/renderer/text/ListHolder;)V

    .line 11
    invoke-virtual {p2}, Lorg/commonmark/node/OrderedList;->getDelimiter()C

    move-result v0

    iput-char v0, p0, Lorg/commonmark/internal/renderer/text/OrderedListHolder;->delimiter:C

    .line 12
    invoke-virtual {p2}, Lorg/commonmark/node/OrderedList;->getStartNumber()I

    move-result v0

    iput v0, p0, Lorg/commonmark/internal/renderer/text/OrderedListHolder;->counter:I

    .line 13
    return-void
.end method


# virtual methods
.method public getCounter()I
    .locals 1

    .line 20
    iget v0, p0, Lorg/commonmark/internal/renderer/text/OrderedListHolder;->counter:I

    return v0
.end method

.method public getDelimiter()C
    .locals 1

    .line 16
    iget-char v0, p0, Lorg/commonmark/internal/renderer/text/OrderedListHolder;->delimiter:C

    return v0
.end method

.method public increaseCounter()V
    .locals 1

    .line 24
    iget v0, p0, Lorg/commonmark/internal/renderer/text/OrderedListHolder;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/commonmark/internal/renderer/text/OrderedListHolder;->counter:I

    .line 25
    return-void
.end method
