.class public final Lcom/liquable/nemo/model/account/I18nPhoneNo;
.super Ljava/lang/Object;
.source "I18nPhoneNo.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7b2fd0b407dc714dL


# instance fields
.field private final countryCode:Ljava/lang/String;

.field private final countryCodeSource:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

.field private final extension:Ljava/lang/String;

.field private final italianLeadingZero:Z

.field private final nationalNumber:J

.field private final preferredDomesticCarrierCode:Ljava/lang/String;

.field private final rawInput:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;Ljava/lang/String;)V
    .locals 0
    .param p1, "rawInput"    # Ljava/lang/String;
    .param p2, "countryCode"    # Ljava/lang/String;
    .param p3, "nationalNumber"    # J
    .param p5, "extension"    # Ljava/lang/String;
    .param p6, "italianLeadingZero"    # Z
    .param p7, "countryCodeSource"    # Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;
    .param p8, "preferredDomesticCarrierCode"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->rawInput:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->countryCode:Ljava/lang/String;

    .line 30
    iput-wide p3, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->nationalNumber:J

    .line 31
    iput-object p5, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->extension:Ljava/lang/String;

    .line 32
    iput-boolean p6, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->italianLeadingZero:Z

    .line 33
    iput-object p7, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->countryCodeSource:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    .line 34
    iput-object p8, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->preferredDomesticCarrierCode:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    if-ne p0, p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 42
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    instance-of v3, p1, Lcom/liquable/nemo/model/account/I18nPhoneNo;

    if-nez v3, :cond_3

    move v1, v2

    .line 46
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 48
    check-cast v0, Lcom/liquable/nemo/model/account/I18nPhoneNo;

    .line 49
    .local v0, "other":Lcom/liquable/nemo/model/account/I18nPhoneNo;
    iget-object v3, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->countryCode:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 50
    iget-object v3, v0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->countryCode:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 51
    goto :goto_0

    .line 53
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->countryCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->countryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 54
    goto :goto_0

    .line 56
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->countryCodeSource:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    if-nez v3, :cond_6

    .line 57
    iget-object v3, v0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->countryCodeSource:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    if-eqz v3, :cond_7

    move v1, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->countryCodeSource:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->countryCodeSource:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 61
    goto :goto_0

    .line 63
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->extension:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 64
    iget-object v3, v0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->extension:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 65
    goto :goto_0

    .line 67
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->extension:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->extension:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 68
    goto :goto_0

    .line 70
    :cond_9
    iget-boolean v3, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->italianLeadingZero:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->italianLeadingZero:Z

    if-eq v3, v4, :cond_a

    move v1, v2

    .line 71
    goto :goto_0

    .line 73
    :cond_a
    iget-wide v3, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->nationalNumber:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->nationalNumber:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b

    move v1, v2

    .line 74
    goto :goto_0

    .line 76
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->preferredDomesticCarrierCode:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 77
    iget-object v3, v0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->preferredDomesticCarrierCode:Ljava/lang/String;

    if-eqz v3, :cond_d

    move v1, v2

    .line 78
    goto :goto_0

    .line 80
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->preferredDomesticCarrierCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->preferredDomesticCarrierCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 81
    goto :goto_0

    .line 83
    :cond_d
    iget-object v3, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->rawInput:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 84
    iget-object v3, v0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->rawInput:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 85
    goto/16 :goto_0

    .line 87
    :cond_e
    iget-object v3, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->rawInput:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->rawInput:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 88
    goto/16 :goto_0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCodeSource()Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->countryCodeSource:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalNumber()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->nationalNumber:J

    return-wide v0
.end method

.method public getPreferredDomesticCarrierCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->preferredDomesticCarrierCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRawInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->rawInput:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 119
    const/16 v0, 0x1f

    .line 120
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 121
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->countryCode:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 122
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->countryCodeSource:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 123
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->extension:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 124
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->italianLeadingZero:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x4cf

    :goto_3
    add-int v1, v4, v2

    .line 125
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->nationalNumber:J

    iget-wide v6, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->nationalNumber:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 126
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->preferredDomesticCarrierCode:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    .line 127
    :goto_4
    add-int v1, v4, v2

    .line 128
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->rawInput:Ljava/lang/String;

    if-nez v4, :cond_5

    :goto_5
    add-int v1, v2, v3

    .line 129
    return v1

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->countryCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->countryCodeSource:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;->hashCode()I

    move-result v2

    goto :goto_1

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->extension:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 124
    :cond_3
    const/16 v2, 0x4d5

    goto :goto_3

    .line 126
    :cond_4
    iget-object v2, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->preferredDomesticCarrierCode:Ljava/lang/String;

    .line 127
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 128
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->rawInput:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public isItalianLeadingZero()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->italianLeadingZero:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "I18nPhoneNo [rawInput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->rawInput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", countryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nationalNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->nationalNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", italianLeadingZero="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->italianLeadingZero:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", countryCodeSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->countryCodeSource:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", preferredDomesticCarrierCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/I18nPhoneNo;->preferredDomesticCarrierCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
