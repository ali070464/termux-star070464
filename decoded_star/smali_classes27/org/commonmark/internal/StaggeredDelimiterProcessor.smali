.class Lorg/commonmark/internal/StaggeredDelimiterProcessor;
.super Ljava/lang/Object;
.source "StaggeredDelimiterProcessor.java"

# interfaces
.implements Lorg/commonmark/parser/delimiter/DelimiterProcessor;


# instance fields
.field private final delim:C

.field private minLength:I

.field private processors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(C)V
    .locals 1
    .param p1, "delim"    # C

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->minLength:I

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->processors:Ljava/util/LinkedList;

    .line 23
    iput-char p1, p0, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->delim:C

    .line 24
    return-void
.end method

.method private findProcessor(I)Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    .locals 3
    .param p1, "len"    # I

    .line 65
    iget-object v0, p0, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->processors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 66
    .local v1, "p":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    invoke-interface {v1}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getMinLength()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 67
    return-object v1

    .line 69
    .end local v1    # "p":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    :cond_0
    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->processors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    return-object v0
.end method


# virtual methods
.method add(Lorg/commonmark/parser/delimiter/DelimiterProcessor;)V
    .locals 8
    .param p1, "dp"    # Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 43
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getMinLength()I

    move-result v0

    .line 44
    .local v0, "len":I
    iget-object v1, p0, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->processors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 45
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/commonmark/parser/delimiter/DelimiterProcessor;>;"
    const/4 v2, 0x0

    .line 46
    .local v2, "added":Z
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 48
    .local v3, "p":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    invoke-interface {v3}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getMinLength()I

    move-result v4

    .line 49
    .local v4, "pLen":I
    if-le v0, v4, :cond_0

    .line 50
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 51
    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 52
    const/4 v2, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    if-eq v0, v4, :cond_1

    .line 57
    .end local v3    # "p":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    .end local v4    # "pLen":I
    goto :goto_0

    .line 55
    .restart local v3    # "p":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    .restart local v4    # "pLen":I
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot add two delimiter processors for char \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-char v7, p0, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->delim:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' and minimum length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 58
    .end local v3    # "p":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    .end local v4    # "pLen":I
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 59
    iget-object v3, p0, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->processors:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 60
    iput v0, p0, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->minLength:I

    .line 62
    :cond_3
    return-void
.end method

.method public getClosingCharacter()C
    .locals 1

    .line 34
    iget-char v0, p0, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->delim:C

    return v0
.end method

.method public getDelimiterUse(Lorg/commonmark/parser/delimiter/DelimiterRun;Lorg/commonmark/parser/delimiter/DelimiterRun;)I
    .locals 1
    .param p1, "opener"    # Lorg/commonmark/parser/delimiter/DelimiterRun;
    .param p2, "closer"    # Lorg/commonmark/parser/delimiter/DelimiterRun;

    .line 75
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterRun;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->findProcessor(I)Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getDelimiterUse(Lorg/commonmark/parser/delimiter/DelimiterRun;Lorg/commonmark/parser/delimiter/DelimiterRun;)I

    move-result v0

    return v0
.end method

.method public getMinLength()I
    .locals 1

    .line 39
    iget v0, p0, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->minLength:I

    return v0
.end method

.method public getOpeningCharacter()C
    .locals 1

    .line 29
    iget-char v0, p0, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->delim:C

    return v0
.end method

.method public process(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V
    .locals 1
    .param p1, "opener"    # Lorg/commonmark/node/Text;
    .param p2, "closer"    # Lorg/commonmark/node/Text;
    .param p3, "delimiterUse"    # I

    .line 80
    invoke-direct {p0, p3}, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->findProcessor(I)Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->process(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V

    .line 81
    return-void
.end method
