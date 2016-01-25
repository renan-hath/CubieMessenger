.class Lcom/liquable/nemo/chat/widget/EmojiWidget$2;
.super Ljava/lang/Object;
.source "EmojiWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/EmojiWidget;->createEmojiTabBtn(Landroid/content/Context;Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;

.field final synthetic val$grid:Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/EmojiWidget;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/widget/EmojiWidget;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    iput-object p2, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$2;->val$grid:Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$2;->val$grid:Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;

    # invokes: Lcom/liquable/nemo/chat/widget/EmojiWidget;->onSwitch(Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;)V
    invoke-static {v1, v0, v2}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->access$000(Lcom/liquable/nemo/chat/widget/EmojiWidget;Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;)V

    .line 169
    return-void
.end method
