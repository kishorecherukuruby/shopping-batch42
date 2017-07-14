class ProductsMailer < ApplicationMailer
	default from: "kishorebatch38@gmail.com"
	def products_mailer(user,product)
	    @user = user
	    @product = product
	    mail(to: @user.email, subject: 'Sample Email')
	end
end
