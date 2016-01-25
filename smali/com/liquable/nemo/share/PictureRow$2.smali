.class Lcom/liquable/nemo/share/PictureRow$2;
.super Ljava/lang/Object;
.source "PictureRow.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/share/PictureRow;->setOnMediaInfoCheckedListener(Lcom/liquable/nemo/share/MediaInfoCheckedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/share/PictureRow;

.field final synthetic val$listener:Lcom/liquable/nemo/share/MediaInfoCheckedListener;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/PictureRow;Lcom/liquable/nemo/share/MediaInfoCheckedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/share/PictureRow;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/liquable/nemo/share/PictureRow$2;->this$0:Lcom/liquable/nemo/share/PictureRow;

    iput-object p2, p0, Lcom/liquable/nemo/share/PictureRow$2;->val$listener:Lcom/liquable/nemo/share/MediaInfoCheckedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/provider/MediaInfo;

    .line 88
    .local v0, "picInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    iget-object v1, p0, Lcom/liquable/nemo/share/PictureRow$2;->val$listener:Lcom/liquable/nemo/share/MediaInfoCheckedListener;

    invoke-interface {v1, v0, p2}, Lcom/liquable/nemo/share/MediaInfoCheckedListener;->onCheckedChanged(Lcom/liquable/nemo/android/provider/MediaInfo;Z)V

    goto :goto_0
.end method
