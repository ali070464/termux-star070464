.class public Lcom/termux/app/terminal/io/FullScreenWorkAround;
.super Ljava/lang/Object;
.source "FullScreenWorkAround.java"


# instance fields
.field private final mChildOfContent:Landroid/view/View;

.field private final mNavBarHeight:I

.field private mUsableHeightPrevious:I

.field private final mViewGroupLayoutParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method private constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/termux/app/TermuxActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 31
    .local v0, "content":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mChildOfContent:Landroid/view/View;

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mViewGroupLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 33
    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getNavBarHeight()I

    move-result v2

    iput v2, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mNavBarHeight:I

    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/termux/app/terminal/io/-$$Lambda$FullScreenWorkAround$fCAd0qGCDgi47xsNYBtEE7xUuNM;

    invoke-direct {v2, p0}, Lcom/termux/app/terminal/io/-$$Lambda$FullScreenWorkAround$fCAd0qGCDgi47xsNYBtEE7xUuNM;-><init>(Lcom/termux/app/terminal/io/FullScreenWorkAround;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 35
    return-void
.end method

.method public static apply(Lcom/termux/app/TermuxActivity;)V
    .locals 1
    .param p0, "activity"    # Lcom/termux/app/TermuxActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/termux/app/terminal/io/FullScreenWorkAround;

    invoke-direct {v0, p0}, Lcom/termux/app/terminal/io/FullScreenWorkAround;-><init>(Lcom/termux/app/TermuxActivity;)V

    .line 27
    return-void
.end method

.method private computeUsableHeight()I
    .locals 3

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 63
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 64
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private getNavBarHeight()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mNavBarHeight:I

    return v0
.end method

.method public static synthetic lambda$fCAd0qGCDgi47xsNYBtEE7xUuNM(Lcom/termux/app/terminal/io/FullScreenWorkAround;)V
    .locals 0

    invoke-direct {p0}, Lcom/termux/app/terminal/io/FullScreenWorkAround;->possiblyResizeChildOfContent()V

    return-void
.end method

.method private possiblyResizeChildOfContent()V
    .locals 6

    .line 38
    invoke-direct {p0}, Lcom/termux/app/terminal/io/FullScreenWorkAround;->computeUsableHeight()I

    move-result v0

    .line 39
    .local v0, "usableHeightNow":I
    iget v1, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mUsableHeightPrevious:I

    if-eq v0, v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 41
    .local v1, "usableHeightSansKeyboard":I
    sub-int v2, v1, v0

    .line 42
    .local v2, "heightDifference":I
    div-int/lit8 v3, v1, 0x4

    if-le v2, v3, :cond_0

    .line 47
    iget-object v3, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mViewGroupLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    sub-int v4, v1, v2

    invoke-direct {p0}, Lcom/termux/app/terminal/io/FullScreenWorkAround;->getNavBarHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 50
    :cond_0
    iget-object v3, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mViewGroupLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 52
    :goto_0
    iget-object v3, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 53
    iput v0, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mUsableHeightPrevious:I

    .line 55
    .end local v1    # "usableHeightSansKeyboard":I
    .end local v2    # "heightDifference":I
    :cond_1
    return-void
.end method
