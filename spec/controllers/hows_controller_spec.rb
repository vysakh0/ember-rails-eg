require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe HowsController do

  # This should return the minimal set of attributes required to create a valid
  # How. As you add validations to How, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HowsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all hows as @hows" do
      how = How.create! valid_attributes
      get :index, {}, valid_session
      assigns(:hows).should eq([how])
    end
  end

  describe "GET show" do
    it "assigns the requested how as @how" do
      how = How.create! valid_attributes
      get :show, {:id => how.to_param}, valid_session
      assigns(:how).should eq(how)
    end
  end

  describe "GET new" do
    it "assigns a new how as @how" do
      get :new, {}, valid_session
      assigns(:how).should be_a_new(How)
    end
  end

  describe "GET edit" do
    it "assigns the requested how as @how" do
      how = How.create! valid_attributes
      get :edit, {:id => how.to_param}, valid_session
      assigns(:how).should eq(how)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new How" do
        expect {
          post :create, {:how => valid_attributes}, valid_session
        }.to change(How, :count).by(1)
      end

      it "assigns a newly created how as @how" do
        post :create, {:how => valid_attributes}, valid_session
        assigns(:how).should be_a(How)
        assigns(:how).should be_persisted
      end

      it "redirects to the created how" do
        post :create, {:how => valid_attributes}, valid_session
        response.should redirect_to(How.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved how as @how" do
        # Trigger the behavior that occurs when invalid params are submitted
        How.any_instance.stub(:save).and_return(false)
        post :create, {:how => { "title" => "invalid value" }}, valid_session
        assigns(:how).should be_a_new(How)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        How.any_instance.stub(:save).and_return(false)
        post :create, {:how => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested how" do
        how = How.create! valid_attributes
        # Assuming there are no other hows in the database, this
        # specifies that the How created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        How.any_instance.should_receive(:update).with({ "title" => "MyString" })
        put :update, {:id => how.to_param, :how => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested how as @how" do
        how = How.create! valid_attributes
        put :update, {:id => how.to_param, :how => valid_attributes}, valid_session
        assigns(:how).should eq(how)
      end

      it "redirects to the how" do
        how = How.create! valid_attributes
        put :update, {:id => how.to_param, :how => valid_attributes}, valid_session
        response.should redirect_to(how)
      end
    end

    describe "with invalid params" do
      it "assigns the how as @how" do
        how = How.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        How.any_instance.stub(:save).and_return(false)
        put :update, {:id => how.to_param, :how => { "title" => "invalid value" }}, valid_session
        assigns(:how).should eq(how)
      end

      it "re-renders the 'edit' template" do
        how = How.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        How.any_instance.stub(:save).and_return(false)
        put :update, {:id => how.to_param, :how => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested how" do
      how = How.create! valid_attributes
      expect {
        delete :destroy, {:id => how.to_param}, valid_session
      }.to change(How, :count).by(-1)
    end

    it "redirects to the hows list" do
      how = How.create! valid_attributes
      delete :destroy, {:id => how.to_param}, valid_session
      response.should redirect_to(hows_url)
    end
  end

end
