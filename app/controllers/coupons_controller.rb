class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
    end

    def create
        @coupon = Coupon.new
        @student.coupon_code = params[:coupon_code]
        @student.store = params[:store]
        @student.save
        redirect_to coupons_path(@coupon)
    end
end