.class public Lio/noties/markwon/core/spans/EmphasisSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "EmphasisSpan.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "tp"    # Landroid/text/TextPaint;

    .line 15
    const/high16 v0, -0x41800000    # -0.25f

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 16
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "p"    # Landroid/text/TextPaint;

    .line 10
    const/high16 v0, -0x41800000    # -0.25f

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 11
    return-void
.end method
