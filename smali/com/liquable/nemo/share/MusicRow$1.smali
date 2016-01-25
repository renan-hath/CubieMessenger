.class Lcom/liquable/nemo/share/MusicRow$1;
.super Ljava/lang/Object;
.source "MusicRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/share/MusicRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/share/MusicRow;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/MusicRow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/share/MusicRow;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/liquable/nemo/share/MusicRow$1;->this$0:Lcom/liquable/nemo/share/MusicRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 86
    .local v0, "check":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;

    invoke-virtual {v1}, Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;->getCheckBoxTagType()Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;->MORE:Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    if-ne v1, v2, :cond_1

    .line 87
    iget-object v1, p0, Lcom/liquable/nemo/share/MusicRow$1;->this$0:Lcom/liquable/nemo/share/MusicRow;

    # getter for: Lcom/liquable/nemo/share/MusicRow;->onShowMoreClickListener:Lcom/liquable/nemo/share/OnShowMoreClickListener;
    invoke-static {v1}, Lcom/liquable/nemo/share/MusicRow;->access$000(Lcom/liquable/nemo/share/MusicRow;)Lcom/liquable/nemo/share/OnShowMoreClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/liquable/nemo/share/MusicRow$1;->this$0:Lcom/liquable/nemo/share/MusicRow;

    # getter for: Lcom/liquable/nemo/share/MusicRow;->onShowMoreClickListener:Lcom/liquable/nemo/share/OnShowMoreClickListener;
    invoke-static {v1}, Lcom/liquable/nemo/share/MusicRow;->access$000(Lcom/liquable/nemo/share/MusicRow;)Lcom/liquable/nemo/share/OnShowMoreClickListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/share/OnShowMoreClickListener;->onMore()V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0
.end method
