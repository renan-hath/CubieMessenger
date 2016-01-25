.class Lcom/aviary/android/feather/effects/BordersPanel$9;
.super Ljava/lang/Object;
.source "BordersPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/BordersPanel;->onEffectListUpdated(Ljava/util/List;Ljava/util/List;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/effects/BordersPanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/BordersPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/BordersPanel;

    .prologue
    .line 795
    iput-object p1, p0, Lcom/aviary/android/feather/effects/BordersPanel$9;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 799
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$9;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    const-string/jumbo v1, "com.aviary.android.feather.plugins.borders.free"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->downloadPlugin(Ljava/lang/String;I)V

    .line 800
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 801
    return-void
.end method
