.class Lcom/aviary/android/feather/effects/StickersPanel$10;
.super Ljava/lang/Object;
.source "StickersPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/StickersPanel;->onStickersPackListUpdated(Ljava/util/List;III)V
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
    .line 1246
    iput-object p1, p0, Lcom/aviary/android/feather/effects/StickersPanel$10;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1250
    const-string/jumbo v0, "Unpurchased(com.aviary.android.feather.plugins.stickers.free_stickers) : StoreButtonClicked"

    invoke-static {v0}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 1251
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$10;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    const-string/jumbo v1, "com.aviary.android.feather.plugins.stickers.free_stickers"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->downloadPlugin(Ljava/lang/String;I)V

    .line 1253
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1254
    return-void
.end method
