.class Lio/noties/markwon/core/CorePlugin$8;
.super Ljava/lang/Object;
.source "CorePlugin.java"

# interfaces
.implements Lio/noties/markwon/MarkwonVisitor$NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/core/CorePlugin;->image(Lio/noties/markwon/MarkwonVisitor$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/noties/markwon/MarkwonVisitor$NodeVisitor<",
        "Lorg/commonmark/node/Image;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Image;)V
    .locals 9
    .param p1, "visitor"    # Lio/noties/markwon/MarkwonVisitor;
    .param p2, "image"    # Lorg/commonmark/node/Image;

    .line 316
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->configuration()Lio/noties/markwon/MarkwonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/noties/markwon/MarkwonConfiguration;->spansFactory()Lio/noties/markwon/MarkwonSpansFactory;

    move-result-object v0

    const-class v1, Lorg/commonmark/node/Image;

    invoke-interface {v0, v1}, Lio/noties/markwon/MarkwonSpansFactory;->get(Ljava/lang/Class;)Lio/noties/markwon/SpanFactory;

    move-result-object v0

    .line 317
    .local v0, "spanFactory":Lio/noties/markwon/SpanFactory;
    if-nez v0, :cond_0

    .line 318
    invoke-interface {p1, p2}, Lio/noties/markwon/MarkwonVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 319
    return-void

    .line 322
    :cond_0
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->length()I

    move-result v1

    .line 324
    .local v1, "length":I
    invoke-interface {p1, p2}, Lio/noties/markwon/MarkwonVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 327
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 328
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object v2

    const v3, 0xfffc

    invoke-virtual {v2, v3}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    .line 331
    :cond_1
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->configuration()Lio/noties/markwon/MarkwonConfiguration;

    move-result-object v2

    .line 333
    .local v2, "configuration":Lio/noties/markwon/MarkwonConfiguration;
    invoke-virtual {p2}, Lorg/commonmark/node/Image;->getParent()Lorg/commonmark/node/Node;

    move-result-object v3

    .line 334
    .local v3, "parent":Lorg/commonmark/node/Node;
    instance-of v4, v3, Lorg/commonmark/node/Link;

    .line 336
    .local v4, "link":Z
    nop

    .line 337
    invoke-virtual {v2}, Lio/noties/markwon/MarkwonConfiguration;->imageDestinationProcessor()Lio/noties/markwon/image/destination/ImageDestinationProcessor;

    move-result-object v5

    .line 338
    invoke-virtual {p2}, Lorg/commonmark/node/Image;->getDestination()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/noties/markwon/image/destination/ImageDestinationProcessor;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 340
    .local v5, "destination":Ljava/lang/String;
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->renderProps()Lio/noties/markwon/RenderProps;

    move-result-object v6

    .line 345
    .local v6, "props":Lio/noties/markwon/RenderProps;
    sget-object v7, Lio/noties/markwon/image/ImageProps;->DESTINATION:Lio/noties/markwon/Prop;

    invoke-virtual {v7, v6, v5}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 346
    sget-object v7, Lio/noties/markwon/image/ImageProps;->REPLACEMENT_TEXT_IS_LINK:Lio/noties/markwon/Prop;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 347
    sget-object v7, Lio/noties/markwon/image/ImageProps;->IMAGE_SIZE:Lio/noties/markwon/Prop;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 349
    invoke-interface {v0, v2, v6}, Lio/noties/markwon/SpanFactory;->getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v1, v7}, Lio/noties/markwon/MarkwonVisitor;->setSpans(ILjava/lang/Object;)V

    .line 350
    return-void
.end method

.method public bridge synthetic visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Node;)V
    .locals 0

    .line 311
    check-cast p2, Lorg/commonmark/node/Image;

    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/core/CorePlugin$8;->visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Image;)V

    return-void
.end method
