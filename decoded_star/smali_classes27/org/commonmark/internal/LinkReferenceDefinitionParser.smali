.class public Lorg/commonmark/internal/LinkReferenceDefinitionParser;
.super Ljava/lang/Object;
.source "LinkReferenceDefinitionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;
    }
.end annotation


# instance fields
.field private final definitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/node/LinkReferenceDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private destination:Ljava/lang/String;

.field private label:Ljava/lang/StringBuilder;

.field private normalizedLabel:Ljava/lang/String;

.field private final paragraph:Ljava/lang/StringBuilder;

.field private referenceValid:Z

.field private state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

.field private title:Ljava/lang/StringBuilder;

.field private titleDelimiter:C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_DEFINITION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraph:Ljava/lang/StringBuilder;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->definitions:Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->referenceValid:Z

    return-void
.end method

.method private destination(Ljava/lang/CharSequence;I)I
    .locals 4
    .param p1, "line"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I

    .line 142
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 143
    invoke-static {p1, p2}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkDestination(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 144
    .local v0, "afterDestination":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 145
    return v1

    .line 148
    :cond_0
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, v0, -0x1

    .line 149
    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 150
    :cond_1
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->destination:Ljava/lang/String;

    .line 152
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {p1, v0, v2}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 153
    .local v2, "afterSpace":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->referenceValid:Z

    .line 157
    iget-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraph:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 158
    :cond_2
    if-ne v2, v0, :cond_3

    .line 160
    return v1

    .line 163
    :cond_3
    :goto_1
    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_TITLE:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 164
    return v2
.end method

.method private finishReference()V
    .locals 6

    .line 232
    iget-boolean v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->referenceValid:Z

    if-nez v0, :cond_0

    .line 233
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->destination:Ljava/lang/String;

    invoke-static {v0}, Lorg/commonmark/internal/util/Escaping;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "d":Ljava/lang/String;
    iget-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/commonmark/internal/util/Escaping;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 238
    .local v1, "t":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->definitions:Ljava/util/List;

    new-instance v4, Lorg/commonmark/node/LinkReferenceDefinition;

    iget-object v5, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->normalizedLabel:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v1}, Lorg/commonmark/node/LinkReferenceDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iput-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    .line 241
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->referenceValid:Z

    .line 242
    iput-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->normalizedLabel:Ljava/lang/String;

    .line 243
    iput-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->destination:Ljava/lang/String;

    .line 244
    iput-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    .line 245
    return-void
.end method

.method private label(Ljava/lang/CharSequence;I)I
    .locals 5
    .param p1, "line"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I

    .line 104
    invoke-static {p1, p2}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkLabelContent(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 105
    .local v0, "afterLabel":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 106
    return v1

    .line 109
    :cond_0
    iget-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 111
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 113
    iget-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    return v0

    .line 115
    :cond_1
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_6

    .line 116
    add-int/lit8 v2, v0, 0x1

    .line 118
    .local v2, "colon":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 123
    :cond_2
    iget-object v3, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x3e7

    if-le v3, v4, :cond_3

    .line 124
    return v1

    .line 127
    :cond_3
    iget-object v3, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/commonmark/internal/util/Escaping;->normalizeLabelContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "normalizedLabel":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 129
    return v1

    .line 132
    :cond_4
    iput-object v3, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->normalizedLabel:Ljava/lang/String;

    .line 133
    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->DESTINATION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 135
    add-int/lit8 v1, v2, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p1, v1, v4}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    move-result v1

    return v1

    .line 119
    .end local v3    # "normalizedLabel":Ljava/lang/String;
    :cond_5
    :goto_0
    return v1

    .line 137
    .end local v2    # "colon":I
    :cond_6
    return v1
.end method

.method private startDefinition(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p1, "line"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I

    .line 87
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 88
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    sget-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->LABEL:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v0, p2, 0x1

    .line 96
    .local v0, "labelStart":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 97
    iget-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    :cond_1
    return v0

    .line 89
    .end local v0    # "labelStart":I
    :cond_2
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private startTitle(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p1, "line"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I

    .line 168
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 169
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 170
    sget-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_DEFINITION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 171
    return p2

    .line 174
    :cond_0
    const/4 v0, 0x0

    iput-char v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    .line 175
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 176
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 182
    :sswitch_0
    const/16 v1, 0x29

    iput-char v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    goto :goto_0

    .line 179
    :sswitch_1
    iput-char v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    .line 180
    nop

    .line 186
    :goto_0
    iget-char v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    if-eqz v1, :cond_1

    .line 187
    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->TITLE:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    .line 189
    add-int/lit8 p2, p2, 0x1

    .line 190
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 191
    iget-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 194
    :cond_1
    invoke-direct {p0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->finishReference()V

    .line 196
    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_DEFINITION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 198
    :cond_2
    :goto_1
    return p2

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x27 -> :sswitch_1
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method private title(Ljava/lang/CharSequence;I)I
    .locals 5
    .param p1, "line"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I

    .line 202
    iget-char v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    invoke-static {p1, p2, v0}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkTitleContent(Ljava/lang/CharSequence;IC)I

    move-result v0

    .line 203
    .local v0, "afterTitle":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 205
    return v1

    .line 208
    :cond_0
    iget-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 210
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 212
    iget-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    return v0

    .line 216
    :cond_1
    add-int/lit8 v2, v0, 0x1

    .line 217
    .local v2, "afterTitleDelimiter":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {p1, v2, v3}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    move-result v3

    .line 218
    .local v3, "afterSpace":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 220
    return v1

    .line 222
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->referenceValid:Z

    .line 223
    invoke-direct {p0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->finishReference()V

    .line 224
    iget-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraph:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 227
    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_DEFINITION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 228
    return v3
.end method


# virtual methods
.method getDefinitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/commonmark/node/LinkReferenceDefinition;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->finishReference()V

    .line 79
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->definitions:Ljava/util/List;

    return-object v0
.end method

.method getParagraphContent()Ljava/lang/CharSequence;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraph:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method getState()Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    return-object v0
.end method

.method public parse(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "line"    # Ljava/lang/CharSequence;

    .line 31
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraph:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraph:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    :cond_0
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraph:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "i":I
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 38
    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$1;->$SwitchMap$org$commonmark$internal$LinkReferenceDefinitionParser$State:[I

    iget-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    invoke-virtual {v2}, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title(Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0

    .line 57
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->startTitle(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 58
    goto :goto_0

    .line 53
    :pswitch_2
    invoke-direct {p0, p1, v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->destination(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 54
    goto :goto_0

    .line 49
    :pswitch_3
    invoke-direct {p0, p1, v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 50
    goto :goto_0

    .line 45
    :pswitch_4
    invoke-direct {p0, p1, v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->startDefinition(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 46
    goto :goto_0

    .line 42
    :pswitch_5
    return-void

    .line 66
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 67
    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->PARAGRAPH:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 68
    return-void

    .line 71
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
