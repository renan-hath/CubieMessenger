.class Lcom/aviary/android/feather/effects/StickersPanel$8;
.super Ljava/lang/Object;
.source "StickersPanel.java"

# interfaces
.implements Lcom/aviary/android/feather/widget/DrawableHighlightView$OnDeleteClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/StickersPanel;->addSticker(Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/effects/StickersPanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/StickersPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/StickersPanel;

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/aviary/android/feather/effects/StickersPanel$8;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteClick()V
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$8;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    const/4 v1, 0x1

    # invokes: Lcom/aviary/android/feather/effects/StickersPanel;->onClearCurrent(Z)V
    invoke-static {v0, v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$000(Lcom/aviary/android/feather/effects/StickersPanel;Z)V

    .line 1008
    return-void
.end method
