.class public Lorg/checkerframework/checker/regex/RegexUtil$CheckedPatternSyntaxException;
.super Ljava/lang/Exception;
.source "RegexUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/regex/RegexUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckedPatternSyntaxException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x56f86fd2a4752688L


# instance fields
.field private final pse:Ljava/util/regex/PatternSyntaxException;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 102
    new-instance v0, Ljava/util/regex/PatternSyntaxException;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lorg/checkerframework/checker/regex/RegexUtil$CheckedPatternSyntaxException;-><init>(Ljava/util/regex/PatternSyntaxException;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/util/regex/PatternSyntaxException;)V
    .locals 0
    .param p1, "pse"    # Ljava/util/regex/PatternSyntaxException;

    .line 89
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/checkerframework/checker/regex/RegexUtil$CheckedPatternSyntaxException;->pse:Ljava/util/regex/PatternSyntaxException;

    .line 91
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexUtil$CheckedPatternSyntaxException;->pse:Ljava/util/regex/PatternSyntaxException;

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexUtil$CheckedPatternSyntaxException;->pse:Ljava/util/regex/PatternSyntaxException;

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->getIndex()I

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexUtil$CheckedPatternSyntaxException;->pse:Ljava/util/regex/PatternSyntaxException;

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexUtil$CheckedPatternSyntaxException;->pse:Ljava/util/regex/PatternSyntaxException;

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->getPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
