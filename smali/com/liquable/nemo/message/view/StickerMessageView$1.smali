.class Lcom/liquable/nemo/message/view/StickerMessageView$1;
.super Ljava/lang/Object;
.source "StickerMessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/StickerMessageView;->display(Landroid/content/Context;Lcom/liquable/nemo/message/model/StickerMessage;Lcom/liquable/nemo/model/sticker/StickerDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/StickerMessageView;

.field final synthetic val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/StickerMessageView;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/StickerMessageView;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/liquable/nemo/message/view/StickerMessageView$1;->this$0:Lcom/liquable/nemo/message/view/StickerMessageView;

    iput-object p2, p0, Lcom/liquable/nemo/message/view/StickerMessageView$1;->val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/liquable/nemo/message/view/StickerMessageView$1;->val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    .line 117
    return-void
.end method
