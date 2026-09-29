package controller;

import dao.ProduceDAO;
import model.Produce;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AddProduceServlet")
public class AddProduceServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String cropName = request.getParameter("cropName");
        double quantity = Double.parseDouble(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price"));
        String location = request.getParameter("location");

        Produce produce = new Produce(cropName, quantity, price, location);
        ProduceDAO produceDAO = new ProduceDAO();

        boolean isAdded = produceDAO.addProduce(produce);

        if (isAdded) {
            response.sendRedirect("index.jsp?status=success");
        } else {
            response.sendRedirect("index.jsp?status=error");
        }
    }
}
