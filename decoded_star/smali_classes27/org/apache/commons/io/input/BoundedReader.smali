.class public Lorg/apache/commons/io/input/BoundedReader;
.super Ljava/io/Reader;
.source "BoundedReader.java"


# static fields
.field private static final INVALID:I = -0x1


# instance fields
.field private charsRead:I

.field private markedAt:I

.field private final maxCharsFromTargetReader:I

.field private readAheadLimit:I

.field private final target:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1
    .param p1, "target"    # Ljava/io/Reader;
    .param p2, "maxCharsFromTargetReader"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->markedAt:I

    .line 61
    iput-object p1, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    .line 62
    iput p2, p0, Lorg/apache/commons/io/input/BoundedReader;->maxCharsFromTargetReader:I

    .line 63
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 73
    return-void
.end method

.method public mark(I)V
    .locals 2
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    sub-int v1, p1, v0

    iput v1, p0, Lorg/apache/commons/io/input/BoundedReader;->readAheadLimit:I

    .line 102
    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->markedAt:I

    .line 104
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V

    .line 105
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    iget v1, p0, Lorg/apache/commons/io/input/BoundedReader;->maxCharsFromTargetReader:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    .line 117
    return v2

    .line 120
    :cond_0
    iget v1, p0, Lorg/apache/commons/io/input/BoundedReader;->markedAt:I

    if-ltz v1, :cond_1

    sub-int v1, v0, v1

    iget v3, p0, Lorg/apache/commons/io/input/BoundedReader;->readAheadLimit:I

    if-lt v1, v3, :cond_1

    .line 121
    return v2

    .line 123
    :cond_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    .line 124
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 4
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedReader;->read()I

    move-result v1

    .line 141
    .local v1, "c":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 142
    return v0

    .line 144
    :cond_0
    add-int v2, p2, v0

    int-to-char v3, v1

    aput-char v3, p1, v2

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "i":I
    .end local v1    # "c":I
    :cond_1
    return p3
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget v0, p0, Lorg/apache/commons/io/input/BoundedReader;->markedAt:I

    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    .line 83
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    .line 84
    return-void
.end method
