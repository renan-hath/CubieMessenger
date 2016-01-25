.class final synthetic Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/Consumer;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers$$Lambda$1;->arg$1:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;)Lcom/liquable/future/Consumer;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers$$Lambda$1;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;)Lcom/liquable/future/Consumer;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers$$Lambda$1;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;)V

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers$$Lambda$1;->arg$1:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;

    check-cast p1, Ljava/lang/Integer;

    # invokes: Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;->lambda$run$42(Ljava/lang/Integer;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;->access$lambda$0(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;Ljava/lang/Integer;)V

    return-void
.end method
