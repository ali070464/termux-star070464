.class public Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;
.super Ljava/util/MissingFormatArgumentException;
.source "FormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/formatter/FormatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExcessiveOrMissingFormatArgumentException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x10366beL


# instance fields
.field private final expected:I

.field private final found:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "expected"    # I
    .param p2, "found"    # I

    .line 169
    const-string v0, "-"

    invoke-direct {p0, v0}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    .line 170
    iput p1, p0, Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;->expected:I

    .line 171
    iput p2, p0, Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;->found:I

    .line 172
    return-void
.end method


# virtual methods
.method public getExpected()I
    .locals 1

    .line 175
    iget v0, p0, Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;->expected:I

    return v0
.end method

.method public getFound()I
    .locals 1

    .line 179
    iget v0, p0, Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;->found:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 184
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;->expected:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;->found:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Expected %d arguments but found %d."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
