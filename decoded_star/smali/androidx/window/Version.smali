.class public final Landroidx/window/Version;
.super Ljava/lang/Object;
.source "Version.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/Version$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/window/Version;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u001c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001cB\'\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0011\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0000H\u0096\u0002J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0019H\u0096\u0002J\u0008\u0010\u001a\u001a\u00020\u0003H\u0016J\u0008\u0010\u001b\u001a\u00020\u0007H\u0016R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/window/Version;",
        "",
        "major",
        "",
        "minor",
        "patch",
        "description",
        "",
        "(IIILjava/lang/String;)V",
        "bigInteger",
        "Ljava/math/BigInteger;",
        "getBigInteger",
        "()Ljava/math/BigInteger;",
        "bigInteger$delegate",
        "Lkotlin/Lazy;",
        "getDescription",
        "()Ljava/lang/String;",
        "getMajor",
        "()I",
        "getMinor",
        "getPatch",
        "compareTo",
        "other",
        "equals",
        "",
        "",
        "hashCode",
        "toString",
        "Companion",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CURRENT:Landroidx/window/Version;

.field public static final Companion:Landroidx/window/Version$Companion;

.field private static final UNKNOWN:Landroidx/window/Version;

.field public static final VERSION_0_1:Landroidx/window/Version;

.field private static final VERSION_1_0:Landroidx/window/Version;

.field private static final VERSION_PATTERN_STRING:Ljava/lang/String; = "(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:-(.+))?"


# instance fields
.field private final bigInteger$delegate:Lkotlin/Lazy;

.field private final description:Ljava/lang/String;

.field private final major:I

.field private final minor:I

.field private final patch:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    new-instance v0, Landroidx/window/Version$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/Version$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/Version;->Companion:Landroidx/window/Version$Companion;

    .line 78
    new-instance v0, Landroidx/window/Version;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v1, v1, v2}, Landroidx/window/Version;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroidx/window/Version;->UNKNOWN:Landroidx/window/Version;

    .line 80
    new-instance v0, Landroidx/window/Version;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1, v2}, Landroidx/window/Version;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroidx/window/Version;->VERSION_0_1:Landroidx/window/Version;

    .line 81
    new-instance v0, Landroidx/window/Version;

    invoke-direct {v0, v3, v1, v1, v2}, Landroidx/window/Version;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroidx/window/Version;->VERSION_1_0:Landroidx/window/Version;

    .line 83
    sput-object v0, Landroidx/window/Version;->CURRENT:Landroidx/window/Version;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;)V
    .locals 1
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "patch"    # I
    .param p4, "description"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Landroidx/window/Version;->major:I

    .line 26
    iput p2, p0, Landroidx/window/Version;->minor:I

    .line 27
    iput p3, p0, Landroidx/window/Version;->patch:I

    .line 28
    iput-object p4, p0, Landroidx/window/Version;->description:Ljava/lang/String;

    .line 32
    new-instance v0, Landroidx/window/Version$bigInteger$2;

    invoke-direct {v0, p0}, Landroidx/window/Version$bigInteger$2;-><init>(Landroidx/window/Version;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/window/Version;->bigInteger$delegate:Lkotlin/Lazy;

    .line 24
    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/window/Version;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getUNKNOWN$cp()Landroidx/window/Version;
    .locals 1

    .line 24
    sget-object v0, Landroidx/window/Version;->UNKNOWN:Landroidx/window/Version;

    return-object v0
.end method

.method public static final synthetic access$getVERSION_1_0$cp()Landroidx/window/Version;
    .locals 1

    .line 24
    sget-object v0, Landroidx/window/Version;->VERSION_1_0:Landroidx/window/Version;

    return-object v0
.end method

.method private final getBigInteger()Ljava/math/BigInteger;
    .locals 2

    .line 32
    iget-object v0, p0, Landroidx/window/Version;->bigInteger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-bigInteger>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/math/BigInteger;

    return-object v0
.end method

.method public static final parse(Ljava/lang/String;)Landroidx/window/Version;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/window/Version;->Companion:Landroidx/window/Version$Companion;

    invoke-virtual {v0, p0}, Landroidx/window/Version$Companion;->parse(Ljava/lang/String;)Landroidx/window/Version;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Landroidx/window/Version;)I
    .locals 2
    .param p1, "other"    # Landroidx/window/Version;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Landroidx/window/Version;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p1}, Landroidx/window/Version;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 24
    move-object v0, p1

    check-cast v0, Landroidx/window/Version;

    invoke-virtual {p0, v0}, Landroidx/window/Version;->compareTo(Landroidx/window/Version;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 60
    instance-of v0, p1, Landroidx/window/Version;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 61
    return v1

    .line 65
    :cond_0
    iget v0, p0, Landroidx/window/Version;->major:I

    move-object v2, p1

    check-cast v2, Landroidx/window/Version;

    iget v2, v2, Landroidx/window/Version;->major:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/window/Version;->minor:I

    move-object v2, p1

    check-cast v2, Landroidx/window/Version;

    iget v2, v2, Landroidx/window/Version;->minor:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/window/Version;->patch:I

    move-object v2, p1

    check-cast v2, Landroidx/window/Version;

    iget v2, v2, Landroidx/window/Version;->patch:I

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Landroidx/window/Version;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getMajor()I
    .locals 1

    .line 25
    iget v0, p0, Landroidx/window/Version;->major:I

    return v0
.end method

.method public final getMinor()I
    .locals 1

    .line 26
    iget v0, p0, Landroidx/window/Version;->minor:I

    return v0
.end method

.method public final getPatch()I
    .locals 1

    .line 27
    iget v0, p0, Landroidx/window/Version;->patch:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 70
    const/16 v0, 0x11

    .line 71
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/window/Version;->major:I

    add-int/2addr v1, v2

    .line 72
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/window/Version;->minor:I

    add-int/2addr v0, v2

    .line 73
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/window/Version;->patch:I

    add-int/2addr v1, v2

    .line 74
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 40
    iget-object v0, p0, Landroidx/window/Version;->description:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Landroidx/window/Version;->description:Ljava/lang/String;

    const-string v1, "-"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_0
    const-string v0, ""

    .line 40
    :goto_0
    nop

    .line 45
    .local v0, "postfix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroidx/window/Version;->major:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroidx/window/Version;->minor:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/window/Version;->patch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
