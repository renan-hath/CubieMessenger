.class Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;
.super Ljava/lang/Object;
.source "NotificationSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/NotificationSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationTime"
.end annotation


# instance fields
.field public final hour:I

.field public final minute:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;->hour:I

    .line 39
    iput p2, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;->minute:I

    .line 40
    return-void
.end method

.method synthetic constructor <init>(IILcom/liquable/nemo/setting/NotificationSettingActivity$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/liquable/nemo/setting/NotificationSettingActivity$1;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;-><init>(II)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 44
    # getter for: Lcom/liquable/nemo/setting/NotificationSettingActivity;->dateFormat:Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->access$000()Ljava/text/SimpleDateFormat;

    move-result-object v6

    new-instance v0, Ljava/util/Date;

    iget v4, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;->hour:I

    iget v5, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;->minute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
