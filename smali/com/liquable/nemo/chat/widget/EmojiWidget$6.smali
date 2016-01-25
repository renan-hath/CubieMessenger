.class Lcom/liquable/nemo/chat/widget/EmojiWidget$6;
.super Ljava/lang/Object;
.source "EmojiWidget.java"

# interfaces
.implements Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/EmojiWidget;->init(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/EmojiWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/widget/EmojiWidget;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$6;->this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "oldLeft"    # I
    .param p4, "oldTop"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$6;->this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    # invokes: Lcom/liquable/nemo/chat/widget/EmojiWidget;->showHideTabArrow()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->access$500(Lcom/liquable/nemo/chat/widget/EmojiWidget;)V

    .line 346
    return-void
.end method
