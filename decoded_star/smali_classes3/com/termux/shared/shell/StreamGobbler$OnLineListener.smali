.class public interface abstract Lcom/termux/shared/shell/StreamGobbler$OnLineListener;
.super Ljava/lang/Object;
.source "StreamGobbler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/shell/StreamGobbler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLineListener"
.end annotation


# virtual methods
.method public abstract onLine(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation
.end method
