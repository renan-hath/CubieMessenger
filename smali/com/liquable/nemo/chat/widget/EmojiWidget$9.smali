.class Lcom/liquable/nemo/chat/widget/EmojiWidget$9;
.super Ljava/lang/Object;
.source "EmojiWidget.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/EmojiWidget;->onOpen(Z)V
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
    .line 486
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$9;->this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$9;->this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->setVisibility(I)V

    .line 490
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 494
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 498
    return-void
.end method
