.class public Lorg/commonmark/internal/Bracket;
.super Ljava/lang/Object;
.source "Bracket.java"


# instance fields
.field public allowed:Z

.field public bracketAfter:Z

.field public final image:Z

.field public final index:I

.field public final node:Lorg/commonmark/node/Text;

.field public final previous:Lorg/commonmark/internal/Bracket;

.field public final previousDelimiter:Lorg/commonmark/internal/Delimiter;


# direct methods
.method private constructor <init>(Lorg/commonmark/node/Text;ILorg/commonmark/internal/Bracket;Lorg/commonmark/internal/Delimiter;Z)V
    .locals 1
    .param p1, "node"    # Lorg/commonmark/node/Text;
    .param p2, "index"    # I
    .param p3, "previous"    # Lorg/commonmark/internal/Bracket;
    .param p4, "previousDelimiter"    # Lorg/commonmark/internal/Delimiter;
    .param p5, "image"    # Z

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/commonmark/internal/Bracket;->allowed:Z

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/commonmark/internal/Bracket;->bracketAfter:Z

    .line 43
    iput-object p1, p0, Lorg/commonmark/internal/Bracket;->node:Lorg/commonmark/node/Text;

    .line 44
    iput p2, p0, Lorg/commonmark/internal/Bracket;->index:I

    .line 45
    iput-boolean p5, p0, Lorg/commonmark/internal/Bracket;->image:Z

    .line 46
    iput-object p3, p0, Lorg/commonmark/internal/Bracket;->previous:Lorg/commonmark/internal/Bracket;

    .line 47
    iput-object p4, p0, Lorg/commonmark/internal/Bracket;->previousDelimiter:Lorg/commonmark/internal/Delimiter;

    .line 48
    return-void
.end method

.method public static image(Lorg/commonmark/node/Text;ILorg/commonmark/internal/Bracket;Lorg/commonmark/internal/Delimiter;)Lorg/commonmark/internal/Bracket;
    .locals 7
    .param p0, "node"    # Lorg/commonmark/node/Text;
    .param p1, "index"    # I
    .param p2, "previous"    # Lorg/commonmark/internal/Bracket;
    .param p3, "previousDelimiter"    # Lorg/commonmark/internal/Delimiter;

    .line 39
    new-instance v6, Lorg/commonmark/internal/Bracket;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/commonmark/internal/Bracket;-><init>(Lorg/commonmark/node/Text;ILorg/commonmark/internal/Bracket;Lorg/commonmark/internal/Delimiter;Z)V

    return-object v6
.end method

.method public static link(Lorg/commonmark/node/Text;ILorg/commonmark/internal/Bracket;Lorg/commonmark/internal/Delimiter;)Lorg/commonmark/internal/Bracket;
    .locals 7
    .param p0, "node"    # Lorg/commonmark/node/Text;
    .param p1, "index"    # I
    .param p2, "previous"    # Lorg/commonmark/internal/Bracket;
    .param p3, "previousDelimiter"    # Lorg/commonmark/internal/Delimiter;

    .line 35
    new-instance v6, Lorg/commonmark/internal/Bracket;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/commonmark/internal/Bracket;-><init>(Lorg/commonmark/node/Text;ILorg/commonmark/internal/Bracket;Lorg/commonmark/internal/Delimiter;Z)V

    return-object v6
.end method
