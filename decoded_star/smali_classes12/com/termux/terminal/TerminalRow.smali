.class public final Lcom/termux/terminal/TerminalRow;
.super Ljava/lang/Object;
.source "TerminalRow.java"


# static fields
.field private static final SPARE_CAPACITY_FACTOR:F = 1.5f


# instance fields
.field private final mColumns:I

.field mHasNonOneWidthOrSurrogateChars:Z

.field mLineWrap:Z

.field private mSpaceUsed:S

.field final mStyle:[J

.field public mText:[C


# direct methods
.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "columns"    # I
    .param p2, "style"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columns",
            "style"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    .line 30
    int-to-float v0, p1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 31
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    .line 32
    invoke-virtual {p0, p2, p3}, Lcom/termux/terminal/TerminalRow;->clear(J)V

    .line 33
    return-void
.end method

.method private wideDisplayCharacterStartingAt(I)Z
    .locals 7
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "column"
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    .local v0, "currentCharIndex":I
    const/4 v1, 0x0

    .local v1, "currentColumn":I
    :goto_0
    iget-short v2, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    const/4 v3, 0x0

    if-ge v0, v2, :cond_3

    .line 106
    iget-object v2, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "currentCharIndex":I
    .local v4, "currentCharIndex":I
    aget-char v0, v2, v0

    .line 107
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "currentCharIndex":I
    .local v5, "currentCharIndex":I
    aget-char v2, v2, v4

    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    move v4, v5

    goto :goto_1

    .end local v5    # "currentCharIndex":I
    .restart local v4    # "currentCharIndex":I
    :cond_0
    move v2, v0

    .line 108
    .local v2, "codePoint":I
    :goto_1
    invoke-static {v2}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v5

    .line 109
    .local v5, "wcwidth":I
    if-lez v5, :cond_2

    .line 110
    if-ne v1, p1, :cond_1

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 v3, 0x1

    return v3

    .line 111
    :cond_1
    add-int/2addr v1, v5

    .line 112
    if-le v1, p1, :cond_2

    return v3

    .line 114
    .end local v0    # "c":C
    .end local v2    # "codePoint":I
    .end local v5    # "wcwidth":I
    :cond_2
    move v0, v4

    goto :goto_0

    .line 115
    .end local v1    # "currentColumn":I
    .end local v4    # "currentCharIndex":I
    :cond_3
    return v3
.end method


# virtual methods
.method public clear(J)V
    .locals 2
    .param p1, "style"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 120
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    .line 121
    iget v0, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    int-to-short v0, v0

    iput-short v0, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    .line 123
    return-void
.end method

.method public copyInterval(Lcom/termux/terminal/TerminalRow;III)V
    .locals 16
    .param p1, "line"    # Lcom/termux/terminal/TerminalRow;
    .param p2, "sourceX1"    # I
    .param p3, "sourceX2"    # I
    .param p4, "destinationX"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "line",
            "sourceX1",
            "sourceX2",
            "destinationX"
        }
    .end annotation

    .line 37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    iget-boolean v3, v1, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    or-int/2addr v2, v3

    iput-boolean v2, v0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    .line 38
    invoke-virtual/range {p1 .. p2}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v2

    .line 39
    .local v2, "x1":I
    move/from16 v3, p3

    invoke-virtual {v1, v3}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v4

    .line 40
    .local v4, "x2":I
    const/4 v5, 0x1

    if-lez p2, :cond_0

    add-int/lit8 v6, p2, -0x1

    invoke-direct {v1, v6}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 41
    .local v6, "startingFromSecondHalfOfWideChar":Z
    :goto_0
    iget-object v7, v1, Lcom/termux/terminal/TerminalRow;->mText:[C

    if-ne v0, v1, :cond_1

    array-length v8, v7

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v7

    .line 42
    .local v7, "sourceChars":[C
    :cond_1
    const/4 v8, 0x0

    .line 43
    .local v8, "latestNonCombiningWidth":I
    move v9, v2

    move v10, v8

    move v11, v9

    move/from16 v8, p4

    move v9, v6

    move/from16 v6, p2

    .end local p2    # "sourceX1":I
    .end local p4    # "destinationX":I
    .local v6, "sourceX1":I
    .local v8, "destinationX":I
    .local v9, "startingFromSecondHalfOfWideChar":Z
    .local v10, "latestNonCombiningWidth":I
    .local v11, "i":I
    :goto_1
    if-ge v11, v4, :cond_5

    .line 44
    aget-char v12, v7, v11

    .line 45
    .local v12, "sourceChar":C
    invoke-static {v12}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v13

    if-eqz v13, :cond_2

    add-int/lit8 v11, v11, 0x1

    aget-char v13, v7, v11

    invoke-static {v12, v13}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v13

    goto :goto_2

    :cond_2
    move v13, v12

    .line 46
    .local v13, "codePoint":I
    :goto_2
    if-eqz v9, :cond_3

    .line 48
    const/16 v13, 0x20

    .line 49
    const/4 v9, 0x0

    .line 51
    :cond_3
    invoke-static {v13}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v14

    .line 52
    .local v14, "w":I
    if-lez v14, :cond_4

    .line 53
    add-int/2addr v8, v10

    .line 54
    add-int/2addr v6, v10

    .line 55
    move v10, v14

    .line 57
    :cond_4
    move v15, v2

    .end local v2    # "x1":I
    .local v15, "x1":I
    invoke-virtual {v1, v6}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v2

    invoke-virtual {v0, v8, v13, v2, v3}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    .line 43
    .end local v12    # "sourceChar":C
    .end local v13    # "codePoint":I
    .end local v14    # "w":I
    add-int/2addr v11, v5

    move/from16 v3, p3

    move v2, v15

    goto :goto_1

    .line 59
    .end local v11    # "i":I
    .end local v15    # "x1":I
    .restart local v2    # "x1":I
    :cond_5
    return-void
.end method

.method public findStartOfColumn(I)I
    .locals 10
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "column"
        }
    .end annotation

    .line 67
    iget v0, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v0

    return v0

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 70
    .local v0, "currentColumn":I
    const/4 v1, 0x0

    .line 72
    .local v1, "currentCharIndex":I
    :goto_0
    move v2, v1

    .line 73
    .local v2, "newCharIndex":I
    iget-object v3, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "newCharIndex":I
    .local v4, "newCharIndex":I
    aget-char v2, v3, v2

    .line 74
    .local v2, "c":C
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    .line 75
    .local v3, "isHigh":Z
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "newCharIndex":I
    .local v6, "newCharIndex":I
    aget-char v4, v5, v4

    invoke-static {v2, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    goto :goto_1

    .end local v6    # "newCharIndex":I
    .restart local v4    # "newCharIndex":I
    :cond_1
    move v6, v4

    move v4, v2

    .line 76
    .local v4, "codePoint":I
    .restart local v6    # "newCharIndex":I
    :goto_1
    invoke-static {v4}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v5

    .line 77
    .local v5, "wcwidth":I
    if-lez v5, :cond_5

    .line 78
    add-int/2addr v0, v5

    .line 79
    if-ne v0, p1, :cond_4

    .line 80
    :goto_2
    iget-short v7, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    if-ge v6, v7, :cond_3

    .line 82
    iget-object v7, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v7, v7, v6

    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 83
    iget-object v7, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v8, v7, v6

    add-int/lit8 v9, v6, 0x1

    aget-char v7, v7, v9

    invoke-static {v8, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v7

    invoke-static {v7}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v7

    if-gtz v7, :cond_3

    .line 84
    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 88
    :cond_2
    iget-object v7, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v7, v7, v6

    invoke-static {v7}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v7

    if-gtz v7, :cond_3

    .line 89
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 94
    :cond_3
    return v6

    .line 95
    :cond_4
    if-le v0, p1, :cond_5

    .line 97
    return v1

    .line 100
    :cond_5
    move v1, v6

    .line 101
    .end local v2    # "c":C
    .end local v3    # "isHigh":Z
    .end local v4    # "codePoint":I
    .end local v5    # "wcwidth":I
    .end local v6    # "newCharIndex":I
    goto :goto_0
.end method

.method public getSpaceUsed()I
    .locals 1

    .line 62
    iget-short v0, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    return v0
.end method

.method public final getStyle(I)J
    .locals 3
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "column"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method isBlank()Z
    .locals 4

    .line 238
    const/4 v0, 0x0

    .local v0, "charIndex":I
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v1

    .local v1, "charLen":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 239
    iget-object v2, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v2, v2, v0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    return v2

    .line 238
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    .end local v0    # "charIndex":I
    .end local v1    # "charLen":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setChar(IIJ)V
    .locals 18
    .param p1, "columnToSet"    # I
    .param p2, "codePoint"    # I
    .param p3, "style"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "columnToSet",
            "codePoint",
            "style"
        }
    .end annotation

    .line 127
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    iget-object v4, v0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    aput-wide v2, v4, p1

    .line 129
    invoke-static/range {p2 .. p2}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v4

    .line 132
    .local v4, "newCodePointDisplayWidth":I
    iget-boolean v5, v0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    const/4 v6, 0x1

    if-nez v5, :cond_2

    .line 133
    const/high16 v5, 0x10000

    if-ge v1, v5, :cond_1

    if-eq v4, v6, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object v5, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    int-to-char v6, v1

    aput-char v6, v5, p1

    .line 137
    return-void

    .line 134
    :cond_1
    :goto_0
    iput-boolean v6, v0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    .line 141
    :cond_2
    if-gtz v4, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 143
    .local v7, "newIsCombining":Z
    :goto_1
    if-lez p1, :cond_4

    add-int/lit8 v8, p1, -0x1

    invoke-direct {v0, v8}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v6

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    .line 145
    .local v8, "wasExtraColForWideChar":Z
    :goto_2
    const/16 v9, 0x20

    const/4 v10, 0x2

    if-eqz v7, :cond_5

    .line 147
    if-eqz v8, :cond_8

    add-int/lit8 v11, p1, -0x1

    .end local p1    # "columnToSet":I
    .local v11, "columnToSet":I
    goto :goto_4

    .line 150
    .end local v11    # "columnToSet":I
    .restart local p1    # "columnToSet":I
    :cond_5
    if-eqz v8, :cond_6

    add-int/lit8 v11, p1, -0x1

    invoke-virtual {v0, v11, v9, v2, v3}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    .line 152
    :cond_6
    if-ne v4, v10, :cond_7

    add-int/lit8 v11, p1, 0x1

    invoke-direct {v0, v11}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v11

    if-eqz v11, :cond_7

    move v11, v6

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    .line 153
    .local v11, "overwritingWideCharInNextColumn":Z
    :goto_3
    if-eqz v11, :cond_8

    add-int/lit8 v12, p1, 0x1

    invoke-virtual {v0, v12, v9, v2, v3}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    .line 156
    .end local v11    # "overwritingWideCharInNextColumn":Z
    :cond_8
    move/from16 v11, p1

    .end local p1    # "columnToSet":I
    .local v11, "columnToSet":I
    :goto_4
    iget-object v12, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 157
    .local v12, "text":[C
    invoke-virtual {v0, v11}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v13

    .line 158
    .local v13, "oldStartOfColumnIndex":I
    invoke-static {v12, v13}, Lcom/termux/terminal/WcWidth;->width([CI)I

    move-result v14

    .line 162
    .local v14, "oldCodePointDisplayWidth":I
    add-int v15, v11, v14

    iget v9, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    if-ge v15, v9, :cond_9

    .line 163
    add-int v9, v11, v14

    invoke-virtual {v0, v9}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v9

    sub-int/2addr v9, v13

    .local v9, "oldCharactersUsedForColumn":I
    goto :goto_5

    .line 166
    .end local v9    # "oldCharactersUsedForColumn":I
    :cond_9
    iget-short v9, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v9, v13

    .line 170
    .restart local v9    # "oldCharactersUsedForColumn":I
    :goto_5
    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->charCount(I)I

    move-result v15

    .line 171
    .local v15, "newCharactersUsedForColumn":I
    if-eqz v7, :cond_a

    .line 176
    add-int/2addr v15, v9

    .line 179
    :cond_a
    add-int v6, v13, v9

    .line 180
    .local v6, "oldNextColumnIndex":I
    add-int v10, v13, v15

    .line 182
    .local v10, "newNextColumnIndex":I
    sub-int v16, v15, v9

    .line 183
    .local v16, "javaCharDifference":I
    if-lez v16, :cond_d

    .line 185
    iget-short v5, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int v2, v5, v6

    .line 186
    .local v2, "oldCharactersAfterColumn":I
    add-int v5, v5, v16

    array-length v3, v12

    if-le v5, v3, :cond_b

    .line 188
    array-length v3, v12

    iget v5, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/2addr v3, v5

    new-array v3, v3, [C

    .line 189
    .local v3, "newText":[C
    add-int v5, v13, v9

    move/from16 v17, v8

    const/4 v8, 0x0

    .end local v8    # "wasExtraColForWideChar":Z
    .local v17, "wasExtraColForWideChar":Z
    invoke-static {v12, v8, v3, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    invoke-static {v12, v6, v3, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    move-object v12, v3

    iput-object v3, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 192
    .end local v3    # "newText":[C
    goto :goto_6

    .line 193
    .end local v17    # "wasExtraColForWideChar":Z
    .restart local v8    # "wasExtraColForWideChar":Z
    :cond_b
    move/from16 v17, v8

    .end local v8    # "wasExtraColForWideChar":Z
    .restart local v17    # "wasExtraColForWideChar":Z
    invoke-static {v12, v6, v12, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    .end local v2    # "oldCharactersAfterColumn":I
    :cond_c
    :goto_6
    goto :goto_7

    .end local v17    # "wasExtraColForWideChar":Z
    .restart local v8    # "wasExtraColForWideChar":Z
    :cond_d
    move/from16 v17, v8

    .end local v8    # "wasExtraColForWideChar":Z
    .restart local v17    # "wasExtraColForWideChar":Z
    if-gez v16, :cond_c

    .line 197
    iget-short v2, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v2, v6

    invoke-static {v12, v6, v12, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    :goto_7
    iget-short v2, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    add-int v2, v2, v16

    int-to-short v2, v2

    iput-short v2, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    .line 203
    if-eqz v7, :cond_e

    move v8, v9

    goto :goto_8

    :cond_e
    const/4 v8, 0x0

    :goto_8
    add-int/2addr v8, v13

    invoke-static {v1, v12, v8}, Ljava/lang/Character;->toChars(I[CI)I

    .line 205
    const/4 v2, 0x2

    if-ne v14, v2, :cond_11

    const/4 v2, 0x1

    if-ne v4, v2, :cond_10

    .line 207
    iget-short v2, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    add-int/lit8 v3, v2, 0x1

    array-length v5, v12

    if-le v3, v5, :cond_f

    .line 208
    array-length v2, v12

    iget v3, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/2addr v2, v3

    new-array v2, v2, [C

    .line 209
    .local v2, "newText":[C
    const/4 v3, 0x0

    invoke-static {v12, v3, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    add-int/lit8 v3, v10, 0x1

    iget-short v5, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v5, v10

    invoke-static {v12, v10, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    move-object v12, v2

    iput-object v2, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 212
    .end local v2    # "newText":[C
    goto :goto_9

    .line 213
    :cond_f
    add-int/lit8 v3, v10, 0x1

    sub-int/2addr v2, v10

    invoke-static {v12, v10, v12, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    :goto_9
    const/16 v2, 0x20

    aput-char v2, v12, v10

    .line 217
    iget-short v2, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    const/4 v3, 0x1

    add-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto :goto_c

    .line 205
    :cond_10
    move v3, v2

    goto :goto_a

    :cond_11
    const/4 v3, 0x1

    .line 218
    :goto_a
    if-ne v14, v3, :cond_15

    const/4 v2, 0x2

    if-ne v4, v2, :cond_15

    .line 219
    iget v5, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/lit8 v8, v5, -0x1

    if-eq v11, v8, :cond_14

    .line 221
    sub-int/2addr v5, v2

    if-ne v11, v5, :cond_12

    .line 223
    int-to-short v2, v10

    iput-short v2, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto :goto_c

    .line 227
    :cond_12
    iget-object v5, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v5, v5, v10

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_b

    :cond_13
    move v2, v3

    :goto_b
    add-int/2addr v2, v10

    .line 228
    .local v2, "newNextNextColumnIndex":I
    sub-int v3, v2, v10

    .line 231
    .local v3, "nextLen":I
    iget-short v5, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v5, v2

    invoke-static {v12, v2, v12, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    iget-short v5, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v5, v3

    int-to-short v5, v5

    iput-short v5, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto :goto_c

    .line 220
    .end local v2    # "newNextNextColumnIndex":I
    .end local v3    # "nextLen":I
    :cond_14
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot put wide character in last column"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :cond_15
    :goto_c
    return-void
.end method
