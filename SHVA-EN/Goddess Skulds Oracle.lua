--女神スクルドの託宣
--Goddess Skuld's Oracle
--Scripted by Eerie Code
function c100243008.initial_effect(c)
	--Activate
	local e1=Effect.CreateEffect(c)
	e1:SetCategory(CATEGORY_TOHAND+CATEGORY_SEARCH)
	e1:SetType(EFFECT_TYPE_ACTIVATE)
	e1:SetCode(EVENT_FREE_CHAIN)
	e1:SetCountLimit(1,100243008+EFFECT_COUNT_CODE_OATH)
	e1:SetOperation(c100243008.activate)
	c:RegisterEffect(e1)
	--rearrange
	local e2=Effect.CreateEffect(c)
	e2:SetType(EFFECT_TYPE_IGNITION)
	e2:SetRange(LOCATION_SZONE)
	e2:SetCountLimit(1)
	e2:SetTarget(c100243008.target)
	e2:SetOperation(c100243008.operation)
	c:RegisterEffect(e2)
end
function c100243008.thcfilter(c)
	return c:IsFacedown() or not c:IsSetCard(0x228)
end
function c100243008.thcon(e,tp,eg,ep,ev,re,r,rp)
	return Duel.GetFieldGroupCount(tp,LOCATION_MZONE,0)>0
		and not Duel.IsExistingMatchingCard(c100243008.thcfilter,tp,LOCATION_MZONE,0,1,nil)	
end
function c100243008.thfilter(c)
	return c:IsCode(100243009) and c:IsAbleToHand()
end
function c100243008.activate(e,tp,eg,ep,ev,re,r,rp)
	if not e:GetHandler():IsRelateToEffect(e) then return end
	local g=Duel.GetMatchingGroup(c100243008.thfilter,tp,LOCATION_DECK,0,nil)
	if #g>0 and Duel.SelectYesNo(tp,aux.Stringid(100243008,0)) then
		Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_ATOHAND)
		local sg=g:Select(tp,1,1,nil)
		Duel.SendtoHand(sg,nil,REASON_EFFECT)
		Duel.ConfirmCards(1-tp,sg)
	end
end
function c100243008.target(e,tp,eg,ep,ev,re,r,rp,chk)
    if chk==0 then return Duel.GetFieldGroupCount(tp,0,LOCATION_DECK)>2 end
end
function c100243008.operation(e,tp,eg,ep,ev,re,r,rp)
    Duel.SortDecktop(tp,1-tp,3)
	local e1=Effect.CreateEffect(e:GetHandler())
	e1:SetType(EFFECT_TYPE_FIELD)
	e1:SetProperty(EFFECT_FLAG_PLAYER_TARGET)
	e1:SetCode(EFFECT_CANNOT_SUMMON)
	e1:SetTargetRange(1,0)
	e1:SetTarget(c100243008.sumlimit)
	e1:SetReset(RESET_PHASE+PHASE_END)
	Duel.RegisterEffect(e1,tp)
	local e2=e1:Clone()
	e2:SetCode(EFFECT_CANNOT_SPECIAL_SUMMON)
	Duel.RegisterEffect(e2,tp)
end
function c100243008.sumlimit(e,c,sump,sumtype,sumpos,targetp)
	return not c:IsRace(RACE_FAIRY)
end
