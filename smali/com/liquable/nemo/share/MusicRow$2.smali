.class Lcom/liquable/nemo/share/MusicRow$2;
.super Ljava/lang/Object;
.source "MusicRow.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/share/MusicRow;->setOnMediaInfoCheckedListener(Lcom/liquable/nemo/share/MediaInfoCheckedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/share/MusicRow;

.field final synthetic val$listener:Lcom/liquable/nemo/share/MediaInfoCheckedListener;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/MusicRow;Lcom/liquable/nemo/share/MediaInfoCheckedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/share/MusicRow;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/liquable/nemo/share/MusicRow$2;->this$0:Lcom/liquable/nemo/share/MusicRow;

    iput-object p2, p0, Lcom/liquable/nemo/share/MusicRow$2;->val$listener:Lcom/liquable/nemo/share/MediaInfoCheckedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;

    invoke-virtual {v1}, Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;->getAudioInfo()Lcom/liquable/nemo/android/provider/AudioInfo;

    move-result-object v0

    .line 120
    .local v0, "musicInfo":Lcom/liquable/nemo/android/provider/AudioInfo;
    iget-object v1, p0, Lcom/liquable/nemo/share/MusicRow$2;->val$listener:Lcom/liquable/nemo/share/MediaInfoCheckedListener;

    invoke-interface {v1, v0, p2}, Lcom/liquable/nemo/share/MediaInfoCheckedListener;->onCheckedChanged(Lcom/liquable/nemo/android/provider/MediaInfo;Z)V

    .line 121
    return-void
.end method
