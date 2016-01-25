.class final synthetic Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers$$Lambda$2;->arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/sticker/StickerInAppBilling;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers$$Lambda$2;-><init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/sticker/StickerInAppBilling;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers$$Lambda$2;-><init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers$$Lambda$2;->arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->destroy()V

    return-void
.end method
