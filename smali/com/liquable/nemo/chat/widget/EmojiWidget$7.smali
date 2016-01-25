.class Lcom/liquable/nemo/chat/widget/EmojiWidget$7;
.super Ljava/lang/Object;
.source "EmojiWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 350
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$7;->this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 353
    const/4 v0, 0x1

    return v0
.end method
