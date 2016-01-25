.class Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;
.super Ljava/lang/Object;
.source "NotifyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/NotifyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadStickerNotification"
.end annotation


# instance fields
.field builder:Landroid/support/v4/app/NotificationCompat$Builder;

.field currentSticker:Ljava/lang/String;

.field final synthetic this$0:Lcom/liquable/nemo/android/NotifyManager;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/android/NotifyManager;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/android/NotifyManager;
    .param p2, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;->this$0:Lcom/liquable/nemo/android/NotifyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p2, p0, Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 127
    return-void
.end method


# virtual methods
.method public final getBuilder()Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    return-object v0
.end method

.method public final getCurrentSticker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;->currentSticker:Ljava/lang/String;

    return-object v0
.end method

.method public final setCurrentSticker(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentSticker"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;->currentSticker:Ljava/lang/String;

    .line 139
    return-void
.end method
