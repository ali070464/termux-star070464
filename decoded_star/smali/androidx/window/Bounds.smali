.class public final Landroidx/window/Bounds;
.super Ljava/lang/Object;
.source "Bounds.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B%\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\nJ\u0013\u0010\u0017\u001a\u00020\u00102\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u0006H\u0016J\u0006\u0010\u001a\u001a\u00020\u0003J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u000f\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000cR\u0011\u0010\u0015\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u000c\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/window/Bounds;",
        "",
        "rect",
        "Landroid/graphics/Rect;",
        "(Landroid/graphics/Rect;)V",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "(IIII)V",
        "getBottom",
        "()I",
        "height",
        "getHeight",
        "isEmpty",
        "",
        "()Z",
        "getLeft",
        "getRight",
        "getTop",
        "width",
        "getWidth",
        "equals",
        "other",
        "hashCode",
        "toRect",
        "toString",
        "",
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


# instance fields
.field private final bottom:I

.field private final left:I

.field private final right:I

.field private final top:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroidx/window/Bounds;->left:I

    .line 32
    iput p2, p0, Landroidx/window/Bounds;->top:I

    .line 33
    iput p3, p0, Landroidx/window/Bounds;->right:I

    .line 34
    iput p4, p0, Landroidx/window/Bounds;->bottom:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/window/Bounds;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 66
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 69
    :cond_2
    if-eqz p1, :cond_7

    move-object v1, p1

    check-cast v1, Landroidx/window/Bounds;

    .line 71
    iget v1, p0, Landroidx/window/Bounds;->left:I

    move-object v3, p1

    check-cast v3, Landroidx/window/Bounds;

    iget v3, v3, Landroidx/window/Bounds;->left:I

    if-eq v1, v3, :cond_3

    return v2

    .line 72
    :cond_3
    iget v1, p0, Landroidx/window/Bounds;->top:I

    move-object v3, p1

    check-cast v3, Landroidx/window/Bounds;

    iget v3, v3, Landroidx/window/Bounds;->top:I

    if-eq v1, v3, :cond_4

    return v2

    .line 73
    :cond_4
    iget v1, p0, Landroidx/window/Bounds;->right:I

    move-object v3, p1

    check-cast v3, Landroidx/window/Bounds;

    iget v3, v3, Landroidx/window/Bounds;->right:I

    if-eq v1, v3, :cond_5

    return v2

    .line 74
    :cond_5
    iget v1, p0, Landroidx/window/Bounds;->bottom:I

    move-object v3, p1

    check-cast v3, Landroidx/window/Bounds;

    iget v3, v3, Landroidx/window/Bounds;->bottom:I

    if-eq v1, v3, :cond_6

    return v2

    .line 76
    :cond_6
    return v0

    .line 69
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type androidx.window.Bounds"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getBottom()I
    .locals 1

    .line 34
    iget v0, p0, Landroidx/window/Bounds;->bottom:I

    return v0
.end method

.method public final getHeight()I
    .locals 2

    .line 53
    iget v0, p0, Landroidx/window/Bounds;->bottom:I

    iget v1, p0, Landroidx/window/Bounds;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLeft()I
    .locals 1

    .line 31
    iget v0, p0, Landroidx/window/Bounds;->left:I

    return v0
.end method

.method public final getRight()I
    .locals 1

    .line 33
    iget v0, p0, Landroidx/window/Bounds;->right:I

    return v0
.end method

.method public final getTop()I
    .locals 1

    .line 32
    iget v0, p0, Landroidx/window/Bounds;->top:I

    return v0
.end method

.method public final getWidth()I
    .locals 2

    .line 47
    iget v0, p0, Landroidx/window/Bounds;->right:I

    iget v1, p0, Landroidx/window/Bounds;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 80
    iget v0, p0, Landroidx/window/Bounds;->left:I

    .line 81
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/window/Bounds;->top:I

    add-int/2addr v1, v2

    .line 82
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/window/Bounds;->right:I

    add-int/2addr v0, v2

    .line 83
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/window/Bounds;->bottom:I

    add-int/2addr v1, v2

    .line 84
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroidx/window/Bounds;->getHeight()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/window/Bounds;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final toRect()Landroid/graphics/Rect;
    .locals 5

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroidx/window/Bounds;->left:I

    iget v2, p0, Landroidx/window/Bounds;->top:I

    iget v3, p0, Landroidx/window/Bounds;->right:I

    iget v4, p0, Landroidx/window/Bounds;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/window/Bounds;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " { ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/window/Bounds;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/window/Bounds;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/window/Bounds;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/window/Bounds;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
