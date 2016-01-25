.class Lcom/liquable/nemo/share/PictureRow$1;
.super Ljava/lang/Object;
.source "PictureRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/share/PictureRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/share/PictureRow;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/PictureRow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/share/PictureRow;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/liquable/nemo/share/PictureRow$1;->this$0:Lcom/liquable/nemo/share/PictureRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/liquable/nemo/share/PictureRow$1;->this$0:Lcom/liquable/nemo/share/PictureRow;

    # getter for: Lcom/liquable/nemo/share/PictureRow;->onShowMoreClickListener:Lcom/liquable/nemo/share/OnShowMoreClickListener;
    invoke-static {v1}, Lcom/liquable/nemo/share/PictureRow;->access$000(Lcom/liquable/nemo/share/PictureRow;)Lcom/liquable/nemo/share/OnShowMoreClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/liquable/nemo/share/PictureRow$1;->this$0:Lcom/liquable/nemo/share/PictureRow;

    # getter for: Lcom/liquable/nemo/share/PictureRow;->onShowMoreClickListener:Lcom/liquable/nemo/share/OnShowMoreClickListener;
    invoke-static {v1}, Lcom/liquable/nemo/share/PictureRow;->access$000(Lcom/liquable/nemo/share/PictureRow;)Lcom/liquable/nemo/share/OnShowMoreClickListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/share/OnShowMoreClickListener;->onMore()V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 61
    .local v0, "check":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0
.end method
